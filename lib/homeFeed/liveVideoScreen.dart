import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';

class LiveVideoScreen extends StatefulWidget {
  const LiveVideoScreen({super.key});

  @override
  State<LiveVideoScreen> createState() => _LiveVideoScreenState();
}

class _LiveVideoScreenState extends State<LiveVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return InstagramLiveScreen();
  }
}

class InstagramLiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Placeholder for live video
                  Container(
                    color: Colors.grey[900],
                    child: const Center(
                      child: Text(
                        'Live Video',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                  ),
                  // Top row for close button and username
                  Positioned(
                    top: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: Row(
                      children: [
                        CircleAvatar(
                            minRadius: 30,
                            maxRadius: 30,
                            backgroundColor: AppTheme.lightColor,
                            child: Image.asset(
                              'assets/images/apple.png',
                              height: 20,
                              width: 20,
                            )),
                        const SizedBox(width: 6),
                        GestureDetector(
                          onTap: () {

                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return SingleChildScrollView(
                                  child:   Column(
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
                                            onTap: (){

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
                                            padding: EdgeInsets.only(left: 30,right: 30),
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.pink[500],
                                                borderRadius: BorderRadius.circular(25)
                                            ),
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
                                            padding: EdgeInsets.only(left: 20,right: 20),
                                            height: 40,
                                            decoration: BoxDecoration(
                                                border: Border.all(color: AppTheme.primaryColor),
                                                borderRadius: BorderRadius.circular(25)
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "Message",
                                                style: TextStyle(color: AppTheme.primaryColor, fontSize: 15, fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            width: 45,
                                            height: 47,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: AppTheme.lightColor)),
                                            child: const Center(child: Icon(Icons.camera_alt,color: AppTheme.primaryColor,)),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            width: 45,
                                            height: 47,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(color: AppTheme.lightColor)),
                                            child: const Center(child: Icon(Icons.arrow_drop_down,color: AppTheme.primaryColor,)),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),

                                    ],
                                  ),
                                );
                              },
                            );







                          },
                          child: const Column(
                            children: [
                              Text(
                                'Christopher Prajapat',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
                              ),
                              Text(
                                '@Christopherprajapat',
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 6),
                        InkWell(
                          onTap: (){
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
                                          '3.6k Viewers',
                                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15,right: 15),
                                          child: TextFormField(
                                            onChanged: (value) {},
                                            decoration: InputDecoration(
                                              filled: true,
                                              fillColor: const Color(0xFF979797).withOpacity(0.1),
                                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                              border: const OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                borderSide: BorderSide.none,
                                              ),
                                              focusedBorder: const OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                borderSide: BorderSide.none,
                                              ),
                                              enabledBorder: const OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                                borderSide: BorderSide.none,
                                              ),
                                              hintText: "Search product",
                                              prefixIcon: const Icon(Icons.search),
                                              suffixIcon: const Icon(Icons.more_horiz, color: AppTheme.primaryColor),
                                            ),
                                          ),
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
                                                  'Christopher Prajapat',
                                                  style:
                                                  TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                                ),
                                                subtitle: const Text(
                                                  '@Christopherprajapat',
                                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                                ),
                                                trailing: Container(
                                                  padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                                                  decoration:
                                                  BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                                                  child: const Text(
                                                    'Follow',
                                                    style: TextStyle(color: Colors.white, fontSize: 10),
                                                  ),
                                                ),
                                              );
                                            }),

                                      ],
                                    ));
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                            decoration:
                                BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                            child: const Text(
                              'Follow',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                        const SizedBox(width: 6), // Add some spacing between the two containers
                        InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return DefaultTabController(
                                  length: 2, // Number of tabs
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        TabBar(
                                          labelColor: Colors.black,
                                          unselectedLabelColor: Colors.grey,
                                          tabs: [
                                            Tab(text: 'Weekly ranking'),
                                            Tab(text: 'Rising Star'),
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            children: [
                                              // Content for Tab 1
                                              ListView.builder(
                                                itemCount: 4,
                                                shrinkWrap: true,
                                                physics: const AlwaysScrollableScrollPhysics(),
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                    leading: Image.asset('assets/images/apple.png'),
                                                    title: const Text(
                                                      'Christopher Prajapat',
                                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                                    ),
                                                    subtitle: const Text(
                                                      '@Christopherprajapat',
                                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                                    ),
                                                    trailing: Container(
                                                      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                                                      decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                                                      child: const Text(
                                                        'Follow',
                                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                              // Content for Tab 2
                                              ListView.builder(
                                                itemCount: 4,
                                                shrinkWrap: true,
                                                physics: const AlwaysScrollableScrollPhysics(),
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                    leading: Image.asset('assets/images/apple.png'),
                                                    title: Text(
                                                      'User $index',
                                                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                                    ),
                                                    subtitle: Text(
                                                      '@user$index',
                                                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                                    ),
                                                    trailing: Container(
                                                      padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                                                      decoration: BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                                                      child: const Text(
                                                        'Follow',
                                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );

                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 5, right: 5, top: 6, bottom: 6),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(11)),
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.person_add_alt,
                                  size: 13,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Chat',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        const Icon(
                          Icons.cancel_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  // Bottom row for actions (e.g., comments, likes)
                  Positioned(
                    bottom: 16.0,
                    left: 16.0,
                    right: 16.0,
                    child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                                minRadius: 30,
                                maxRadius: 30,
                                backgroundColor: AppTheme.lightColor,
                                child: Image.asset(
                                  'assets/images/apple.png',
                                  height: 20,
                                  width: 20,
                                )),
                            title: const Text(
                              'Christopher Prajapat',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
                            ),
                            subtitle: const Text(
                              '@Christopherprajapat',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            // Placeholder for input field (e.g., comment box)
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[900],
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Say something...',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[800],
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  InkWell(
                    onTap: (){
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 3,
                                      width: 70,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Go Live Together',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                              Divider(height: 1,color: Colors.grey,),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '532 guest requests',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    ListView.builder(
                                        itemCount: 4,
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            leading: Image.asset('assets/images/apple.png'),
                                            title: const Text(
                                              'Christopher Prajapat',
                                              style:
                                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                            ),
                                            subtitle: const Text(
                                              '@Christopherprajapat',
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                            ),
                                            trailing: Container(
                                              padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                                              decoration:
                                              BoxDecoration(color: AppTheme.primaryColor, borderRadius: BorderRadius.circular(11)),
                                              child: const Text(
                                                'Follow',
                                                style: TextStyle(color: Colors.white, fontSize: 10),
                                              ),
                                            ),
                                          );
                                        }),
                                    Divider(height: 1,),
                                    SizedBox(height: 10,),
                                    CommonButton(
                                      text: 'Continue',
                                      textColor: Colors.white,
                                      color: AppTheme.primaryColor,
                                      onPressed: () {
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                )),
                          );
                        },
                      );
                    },
                    child: const Icon(
                      Icons.person_add_alt,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: (){
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 3,
                                      width: 70,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Questions & Answer',
                                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Divider(height: 1,color: Colors.grey,),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(
                                          '532 questions from guest',
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    ListView.builder(
                                        itemCount: 4,
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            leading: Image.asset('assets/images/apple.png'),
                                            title: const Text(
                                              'Christopher Prajapat',
                                              style:
                                              TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),
                                            ),
                                            subtitle: const Text(
                                              'What is your favorite fruit ?',
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey),
                                            ),
                                            trailing: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(Icons.heart_broken,color: AppTheme.primaryColor,),
                                                Text('765')
                                              ],
                                            )
                                          );
                                        }),
                                    Divider(height: 1,),
                                    SizedBox(height: 10,),
                                    CommonButton(
                                      text: 'Continue',
                                      textColor: Colors.white,
                                      color: AppTheme.primaryColor,
                                      onPressed: () {
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                )),
                          );
                        },
                      );
                    },
                    child: const Icon(
                      Icons.question_mark,
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                    size: 28.0,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 28.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
