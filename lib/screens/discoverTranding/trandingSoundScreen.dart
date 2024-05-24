import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';

class TrandingSound extends StatefulWidget {
  const TrandingSound({super.key});

  @override
  State<TrandingSound> createState() => _TrandingSoundState();
}

class _TrandingSoundState extends State<TrandingSound> {
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
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: const DecorationImage(image: AssetImage('assets/images/music.jpeg'))),
                    child: const Center(
                        child: Icon(
                          Icons.play_circle,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Beautiful Girl by Sean Kingston',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '28.7 M Videos',
                          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25), border: Border.all(color: AppTheme.primaryColor)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: AppTheme.primaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Play song',
                          style: TextStyle(color: AppTheme.primaryColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 20, right: 20),
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
              const SizedBox(
                height: 20,
              ),
              ListTile(
                  leading: const CircleAvatar(
                    minRadius: 25,
                    maxRadius: 25,
                    backgroundImage: AssetImage('assets/images/girl.png'),
                  ),
                  title: const Text(
                    'Christopher Prajapat',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: const Text(
                    'Professional Singer',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                    decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(25)),
                    child: const Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 10,
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
                            itemCount: 9, // Number of videos
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
