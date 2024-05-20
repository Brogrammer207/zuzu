import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../widgets/apptheme.dart';
import 'editProfileScreen.dart';
import 'findFriendsScreen.dart';
import 'settingScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person_add_alt),
        title: Center(
          child: const Row(
            children: [Text('Manish'), Icon(Icons.keyboard_arrow_down_outlined)],
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
                onTap: () {
                  Get.to(const SettingScreen());
                },
                child: const Icon(Icons.settings)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 70,
                    minRadius: 70,
                    backgroundColor: Colors.grey.shade400,
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppTheme.primaryColor,
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                '@Manish',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
              ),
              const Text(
                'Developer & Designer',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(const FindFrindsScreen());
                      },
                      child: const Column(
                        children: [
                          Text(
                            '247',
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
                          ),
                          Text(
                            'Post',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30, // Adjust height as needed
                    width: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          '247',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30, // Adjust height as needed
                    width: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          '247',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30, // Adjust height as needed
                    width: 2,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          '247',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17),
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Switch Account',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Image.asset('assets/images/apple.png'),
                                      title: const Text(
                                        'Manish Prajapat',
                                        style:
                                            TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                      ),
                                      subtitle: const Text(
                                        '@manishprajapat',
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                      ),
                                      trailing: const Icon(
                                        Icons.check,
                                        color: AppTheme.primaryColor,
                                      ),
                                    );
                                  }),
                              ListTile(
                                leading: const CircleAvatar(
                                  minRadius: 30,
                                  maxRadius: 30,
                                  backgroundColor: AppTheme.lightColor,
                                  child: Icon(
                                    Icons.add,
                                    color: AppTheme.primaryColor,
                                  ),
                                ),
                                title: const Text('Add Account'),
                                onTap: () {
                                  Get.to(const EditProfileScreen());
                                },
                              )
                            ],
                          ));
                    },
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppTheme.primaryColor, width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message,
                        color: AppTheme.primaryColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Edit Profile',
                        style: TextStyle(color: AppTheme.primaryColor),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                // Adjust the height of the TabBar according to your needs
                height: 50,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: AppTheme.primaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: AppTheme.primaryColor,
                  tabs: const [
                    Tab(icon: Icon(Icons.home)),
                    Tab(icon: Icon(Icons.lock)),
                    Tab(icon: Icon(Icons.bookmark_add)),
                    Tab(icon: Icon(Icons.heart_broken)),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  itemCount: 9, // Change this to the number of videos you have
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 4.0, crossAxisSpacing: 4.0, childAspectRatio: 0.55),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11)),
                      child: const VideoWidget(
                        videoUrl: 'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoWidget extends StatefulWidget {
  final String videoUrl;

  const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) => setState(() {}));
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
