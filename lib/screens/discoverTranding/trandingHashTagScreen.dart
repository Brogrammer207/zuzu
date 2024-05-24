import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:video_player/video_player.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';

class TrandingHashTagScreen extends StatefulWidget {
  const TrandingHashTagScreen({super.key});

  @override
  State<TrandingHashTagScreen> createState() => _TrandingHashTagScreenState();
}

class _TrandingHashTagScreenState extends State<TrandingHashTagScreen> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
    VideoPlayerController.network('https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4')
      ..initialize().then((_) {
        setState(() {}); // Trigger a rebuild once the video is initialized
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: AppTheme.lightColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                        child: Icon(
                          Icons.tag,
                          color: AppTheme.primaryColor,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beautiful Girl by Sean Kingston',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '28.7 M Videos',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 35,
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25), border: Border.all(color: AppTheme.primaryColor)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: AppTheme.primaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add to favorites',
                                style: TextStyle(color: AppTheme.primaryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              const Divider(
                height: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  FutureBuilder(
                    future: _controller.initialize(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return SizedBox(
                          height: 300,
                          child: GridView.builder(
                            itemCount: 12, // Number of videos
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, mainAxisSpacing: 4.0, crossAxisSpacing: 4.0, childAspectRatio: 0.55),
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8),
                                    decoration:
                                    BoxDecoration(borderRadius: BorderRadius.circular(11), color: Colors.black),
                                    child: AspectRatio(
                                      aspectRatio: _controller.value.aspectRatio,
                                      child: VideoPlayer(_controller),
                                    ),
                                  ),
                                  Center(
                                    child: _controller.value.isPlaying
                                        ? Container()
                                        : const Icon(
                                      Icons.play_arrow,
                                      size: 48,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: CommonButton(
                        text: 'Use This Sound',
                        textColor: Colors.white,
                        color: AppTheme.primaryColor,
                        onPressed: () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
