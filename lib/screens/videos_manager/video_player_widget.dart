import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:zuzu/screens/widgets/apptheme.dart';

import 'model_video_controller_info.dart';
import 'video_controller.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.branchName,
    this.videoIndex,
  });
  final String videoUrl;
  final String branchName;
  final int? videoIndex;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  final videoControllerGetx = Get.put(VideosWidgetController());

  VideoPlayerController? get _videoPlayerController =>
      videoControllerGetx.controllersList[widget.videoUrl]?.videoPlayerController;

  bool initCalled = false;
  @override
  void initState() {
    super.initState();
    manageVideoPlayer();
  }

  Future manageVideoPlayer() async {
    if (videoControllerGetx.controllersList[widget.videoUrl] == null) {
      videoControllerGetx.controllersList[widget.videoUrl] ??= ModelVideoControllerInfo(
          branchName: widget.branchName,
          show: true,
          videoIndex: widget.videoIndex,
          videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl),
              videoPlayerOptions: VideoPlayerOptions(allowBackgroundPlayback: false, mixWithOthers: false)));

      await videoControllerGetx.controllersList[widget.videoUrl]?.videoPlayerController?.initialize();
      if (initCalled) {
        _initPlayer();
      }
    }
  }

  void _initPlayer() async {
    initCalled = true;
    await manageVideoPlayer();
    if (_videoPlayerController != null) {
      await _videoPlayerController?.play();
      setState(() {});
    }
  }

  pauseControllers() async {
    await _videoPlayerController?.seekTo(Duration.zero);
    _videoPlayerController?.pause();
  }

  manageVideoControllerDispose() async {
    for (var element in videoControllerGetx.controllersList.entries) {
      if (element.value.branchName != widget.branchName) {
        element.value.disposeModel = true;
      }
      if (element.value.videoIndex! > (widget.videoIndex! + 5) ||
          element.value.videoIndex! < (widget.videoIndex! - 5)) {
        print("Disposing ${element.key}");
        element.value.disposeModel = true;
      }
      if (element.value.disposeModel == true) {
        await element.value.videoPlayerController?.dispose();
        element.value.videoPlayerController = null;
        if (kDebugMode) {
          print("Disposing ${element.key}   ${element.value.videoIndex}");
        }
      }
    }

    videoControllerGetx.controllersList.removeWhere((k, v) {
      return v.disposeModel == true;
    });

    for (var element in videoControllerGetx.controllersList.entries) {
      if (element.value.branchName != widget.branchName) {
        element.value.disposeModel = true;
        element.value.videoPlayerController?.dispose();
        element.value.videoPlayerController = null;
      }
      print(element.value.videoIndex);
      print(element.value.branchName);
      print(element.key);
    }
  }

  @override
  void dispose() {
    super.dispose();
    manageVideoControllerDispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      onVisibilityChanged: (info) {
        if (info.visibleFraction == 1.0) {
          _initPlayer();
          return;
        }
        if (info.visibleFraction == 0.0) {
          pauseControllers();
        }
      },
      key: ValueKey(widget.videoUrl),
      child: Column(
        children: [
          Expanded(
              child: _videoPlayerController != null && _videoPlayerController!.value.isInitialized
                  ? VideoPlayer(_videoPlayerController!)
                  : const Center(
                      child: CupertinoActivityIndicator(
                        color: Colors.white,
                        radius: 12,
                      ),
                    )),
          VideoProgressIndicator(
            _videoPlayerController!,
            allowScrubbing: true,
            padding: EdgeInsets.zero,
            colors: const VideoProgressColors(backgroundColor: Colors.grey, playedColor: AppTheme.primaryColor),
          )
        ],
      ),
    );
    // return videoController.controllersList[widget.videoUrl] != null
    //     ? SizedBox(
    //         width: double.maxFinite,
    //         child: Chewie(
    //           controller: videoController.controllersList[widget.videoUrl]!,
    //         ),
    //       )
    //     : const Center(
    //         child: CircularProgressIndicator(),
    //       );
  }
}
