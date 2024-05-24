import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zuzu/discoverTranding/trandingHashTagScreen.dart';
import 'package:zuzu/discoverTranding/trandingSoundScreen.dart';

import '../widgets/apptheme.dart';

class TrandingScreen extends StatefulWidget {
  const TrandingScreen({super.key});

  @override
  State<TrandingScreen> createState() => _TrandingScreenState();
}

class _TrandingScreenState extends State<TrandingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tranding'),
          leading: const Icon(Icons.arrow_back_rounded),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            )
          ],
          bottom: const TabBar(
            indicatorColor: AppTheme.primaryColor,
            labelColor: AppTheme.primaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Sounds'),
              Tab(text: 'HashTag'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                ListTile(
                  onTap: (){
                    Get.to(TrandingSound());
                  },
                  leading: Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage(
                          'assets/images/girl.png',
                        ))),
                  ),
                  title: const Text(
                    'Side to Side',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airand andesd',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Text(
                        '01:00',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '938.6k',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                bottom: 8.0,
                                left: 8.0,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle,
                                      color: AppTheme.primaryColor,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      '23.7k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                ListTile(
                  leading: Container(
                    height: 70,
                    width: 60,
                    decoration: BoxDecoration(
                        color: AppTheme.primaryColor,
                        borderRadius: BorderRadius.circular(11),
                        image: const DecorationImage(
                            image: AssetImage(
                          'assets/images/girl.png',
                        ))),
                  ),
                  title: const Text(
                    'Side to Side',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airand andesd',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      Text(
                        '01:00',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '938.6k',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                bottom: 8.0,
                                left: 8.0,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle,
                                      color: AppTheme.primaryColor,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      '23.7k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )),
            SingleChildScrollView(
                child: Column(
              children: [
                ListTile(
                  onTap: (){
                    Get.to(TrandingHashTagScreen());
                  },
                  leading: Container(
                    height: 70,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.lightColor,
                    ),
                    child: const Icon(
                      Icons.tag,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  title: const Text(
                    'Side to Side',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airand andesd',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '938.6k',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                bottom: 8.0,
                                left: 8.0,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle,
                                      color: AppTheme.primaryColor,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      '23.7k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                ListTile(
                  leading: Container(
                    height: 70,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.lightColor,
                    ),
                    child: const Icon(
                      Icons.tag,
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  title: const Text(
                    'Side to Side',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                  ),
                  subtitle: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Airand andesd',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '938.6k',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primaryColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[300],
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  'https://w0.peakpx.com/wallpaper/587/312/HD-wallpaper-indian-girl-beautiful-eyes-hair-insta-lips-model-smile.jpg',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Positioned(
                                bottom: 8.0,
                                left: 8.0,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle,
                                      color: AppTheme.primaryColor,
                                      size: 16.0,
                                    ),
                                    SizedBox(width: 4.0),
                                    Text(
                                      '23.7k',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
