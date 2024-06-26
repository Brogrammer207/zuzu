import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked/stacked.dart';
import 'package:video_player/video_player.dart';
import '../../profile_and_setting/profileScreen.dart';
import '../../widgets/apptheme.dart';
import 'actions_toolbar.dart';
import 'bottom_bar.dart';
import 'feed_viewmodel.dart';
import 'followersScreen.dart';
import 'search_screen.dart';
import 'video.dart';
import 'video_description.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  FeedScreenState createState() => FeedScreenState();
}

class FeedScreenState extends State<FeedScreen> {
  final locator = GetIt.instance;
  final feedViewModel = GetIt.instance<FeedViewModel>();
  @override
  void initState() {
    feedViewModel.loadVideo(0);
    feedViewModel.loadVideo(1);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FeedViewModel>.reactive(
        disposeViewModel: false,
        builder: (context, model, child) => videoScreen(),
        viewModelBuilder: () => feedViewModel);
  }

  Widget videoScreen() {
    return Scaffold(
      backgroundColor: GetIt.instance<FeedViewModel>().actualScreen == 0 ? Colors.black : Colors.white,
      body: PageView.builder(
        itemCount: 2,
        onPageChanged: (value) {
          if (value == 1) {
            SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
          } else {
            SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
          }
        },
        itemBuilder: (context, index) {
          if (index == 0) {
            return scrollFeed();
          } else {
            return profileView();
          }
        },
      ),
    );
  }

  Widget profileView() {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Container(
              color: Colors.white,
              child: Column(children: [
                Container(
                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12))),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text(
                        "Charlotte Stone",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://www.andersonsobelcosmetic.com/wp-content/uploads/2018/09/chin-implant-vs-fillers-best-for-improving-profile-bellevue-washington-chin-surgery.jpg",
                            height: 100.0,
                            width: 100.0,
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "@Charlotte21",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Column(
                          children: [
                            Text(
                              "232",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.black54,
                          width: 1,
                          height: 15,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const FollowersScreen());
                          },
                          child: const Column(
                            children: [
                              Text(
                                "1.3k",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.black54,
                          width: 1,
                          height: 15,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                        ),
                        const Column(
                          children: [
                            Text(
                              "12k",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Following",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.black54,
                          width: 1,
                          height: 15,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                        ),
                        const Column(
                          children: [
                            Text(
                              "12k",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Likes",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          height: 40,
                          decoration: BoxDecoration(color: Colors.pink[500], borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppTheme.primaryColor),
                              borderRadius: BorderRadius.circular(25)),
                          child: const Center(
                            child: Text(
                              "Message",
                              style: TextStyle(color: AppTheme.primaryColor, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 45,
                          height: 47,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppTheme.lightColor)),
                          child: const Center(
                              child: Icon(
                            Icons.camera_alt,
                            color: AppTheme.primaryColor,
                          )),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 45,
                          height: 47,
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppTheme.lightColor)),
                          child: const Center(
                              child: Icon(
                            Icons.arrow_drop_down,
                            color: AppTheme.primaryColor,
                          )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(Icons.menu),
                              const SizedBox(
                                height: 7,
                              ),
                              Container(
                                color: Colors.black,
                                height: 2,
                                width: 55,
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite_border,
                                color: Colors.black26,
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Container(
                                color: Colors.transparent,
                                height: 2,
                                width: 55,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/tOueglJrk5rS8/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/665IPY24jyWFa/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/chjX2ypYJKkr6/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/sC60eX0OVIH7O/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/NsXhybxnMKsh2/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                                color: Colors.black26, border: Border.all(color: Colors.white70, width: .5)),
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: "https://media.giphy.com/media/HE6hyf47yAX1S/giphy.gif",
                                placeholder: (context, url) => const Padding(
                                  padding: EdgeInsets.all(35.0),
                                  child: CircularProgressIndicator(),
                                ),
                                errorWidget: (context, url, error) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]))),
    );
  }

  Widget scrollFeed() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(child: currentScreen()),
        const BottomBar(),
      ],
    );
  }

  Widget feedVideos() {
    return Stack(
      children: [
        PageView.builder(
          controller: PageController(
            initialPage: 0,
            viewportFraction: 1,
          ),
          itemCount: feedViewModel.videoSource?.listVideos.length,
          onPageChanged: (index) {
            // index = index % (feedViewModel.videoSource!.listVideos.length);
            feedViewModel.changeVideo(index);
          },
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            // index = index % (feedViewModel.videoSource!.listVideos.length);
            return videoCard(feedViewModel.videoSource!.listVideos[index]);
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
    );
  }

  Widget currentScreen() {
    switch (feedViewModel.actualScreen) {
      case 0:
        return feedVideos();
      case 1:
        return SearchScreen();
      case 2:
        return SearchScreen();
      case 3:
        return const ProfileScreen();
      default:
        return feedVideos();
    }
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

  @override
  void dispose() {
    feedViewModel.controller?.dispose();
    super.dispose();
  }
}
