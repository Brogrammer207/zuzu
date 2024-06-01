import 'package:video_player/video_player.dart';

class ModelVideoControllerInfo {
  VideoPlayerController? videoPlayerController;
  int? videoIndex;
  bool show = true;
  String branchName;
  bool? disposeModel;

  ModelVideoControllerInfo({
    this.videoPlayerController,
    this.videoIndex,
    this.show = true,
    required this.branchName,
  });
}
