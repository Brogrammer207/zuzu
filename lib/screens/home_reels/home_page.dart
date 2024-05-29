import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../app_navigation_screen/homeFeed/actions_toolbar.dart';
import '../app_navigation_screen/homeFeed/video.dart';
import '../app_navigation_screen/homeFeed/video_description.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: PageController(
              initialPage: 0,
              viewportFraction: 1,
            ),
            itemCount: 0,
            onPageChanged: (index) {
              // index = index % (feedViewModel.videoSource!.listVideos.length);
              // feedViewModel.changeVideo(index);
            },
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return SizedBox();
              // index = index % (feedViewModel.videoSource!.listVideos.length);
              // return videoCard("feedViewModel.videoSource!.listVideos[index]");
            },
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text('Following',
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.normal, color: Colors.white70)),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      color: Colors.white70,
                      height: 10,
                      width: 1.0,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Text('For You',
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
  Widget videoCard(Video video) {
    return Stack(
      children: [
        video.controller != null
            ? GestureDetector(
          onTap: () {
            if (video.controller!.value.isPlaying) {
              video.controller?.pause();
            } else {
              video.controller?.play();
            }
          },
          child: SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: video.controller?.value.size.width ?? 0,
                  height: video.controller?.value.size.height ?? 0,
                  child: VideoPlayer(video.controller!),
                ),
              )),
        )
            : Container(
          color: Colors.black,
          child: const Center(
            child: Text("Loading"),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                VideoDescription(video.user, video.videoTitle, video.songName),
                ActionsToolbar(video.likes, video.comments,
                    "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg"),
              ],
            ),
            const SizedBox(height: 20)
          ],
        ),
      ],
    );
  }
}
