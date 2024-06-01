import 'package:flutter/material.dart';
import 'package:zuzu/repository/api_urls.dart';
import '../videos_manager/video_player_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: DemoVideosList.videosUrls.length,
            onPageChanged: (index) {
              print("Page Changed......     ");
            },
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              final item = DemoVideosList.videosUrls[index];
              return VideoPlayerWidget(
                videoUrl: item,
                videoIndex: index,
                branchName: "For_You",
              );
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
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white)),
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
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
