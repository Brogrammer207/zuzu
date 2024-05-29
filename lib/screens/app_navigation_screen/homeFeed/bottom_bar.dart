import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../../createPost/createPostScreen.dart';
import '../../discoverTranding/trandingScreen.dart';
import '../../inboxActivity/allActivityScreen.dart';
import '../../profileAndSetting/profileScreen.dart';
import 'feed_viewmodel.dart';
import 'liveVideoScreen.dart';
import 'searchUsersScreen.dart';

class BottomBar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;

  const BottomBar({super.key});

  Widget get customCreateIcon => PopupMenuButton<String>(
    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
      const PopupMenuItem<String>(
        value: 'option1',
        child: Text('Posts'),
      ),
      const PopupMenuItem<String>(
        value: 'option2',
        child: Text('Live'),
      ),
    ],
    onSelected: (String value) {
      // Handle the selected option
      switch (value) {
        case 'option1':
        Get.to(const CreatePostScreen());
          break;
        case 'option2':
        Get.to(const LiveVideoScreen());
          break;
      }
    },
    child: Container(
      width: 45.0,
      height: 27.0,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 250, 45, 108),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            width: CreateButtonWidth,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 32, 211, 234),
              borderRadius: BorderRadius.circular(7.0),
            ),
          ),
          Center(
            child: Container(
              height: double.infinity,
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? Colors.white
                    : Colors.black,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: Colors.black12))),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menuButton('Home', Icons.home, 0),
              menuButton('Search', Icons.search, 1),

              customCreateIcon,

              menuButton('Messages', Icons.message, 2),
              menuButton('Profile', Icons.person, 3)
            ],
          ),
          SizedBox(
            height: Platform.isIOS ? 40 : 10,
          )
        ],
      ),
    );
  }

  Widget menuButton(String text, IconData icon, int index) {
    if (text == 'Search') {
      return GestureDetector(
        onTap: () {
          // Navigate to the next screen
          // Replace 'YourNextScreen()' with your actual screen widget
          Get.to(SearchTopUsers());
        },
        child: Container(
          height: 45,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.white
                    : Colors.white70
                    : GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.black
                    : Colors.black54,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: GetIt.instance<FeedViewModel>().actualScreen == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: GetIt.instance<FeedViewModel>().actualScreen == 0
                      ? GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.white
                      : Colors.white70
                      : GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.black
                      : Colors.black54,
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ),
      );
    } else if(text == 'Messages'){
      return GestureDetector(
        onTap: () {
          // Navigate to the next screen
          // Replace 'YourNextScreen()' with your actual screen widget
          Get.to(AllActivityScreen());
        },
        child: Container(
          height: 45,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.white
                    : Colors.white70
                    : GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.black
                    : Colors.black54,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: GetIt.instance<FeedViewModel>().actualScreen == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: GetIt.instance<FeedViewModel>().actualScreen == 0
                      ? GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.white
                      : Colors.white70
                      : GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.black
                      : Colors.black54,
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ),
      );
    }
    else if(text == 'Profile'){
      return GestureDetector(
        onTap: () {
          // Navigate to the next screen
          // Replace 'YourNextScreen()' with your actual screen widget
          Get.to(ProfileScreen());
        },
        child: Container(
          height: 45,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.white
                    : Colors.white70
                    : GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.black
                    : Colors.black54,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: GetIt.instance<FeedViewModel>().actualScreen == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: GetIt.instance<FeedViewModel>().actualScreen == 0
                      ? GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.white
                      : Colors.white70
                      : GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.black
                      : Colors.black54,
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ),
      );
    }
    else if(text == 'Home'){
      return GestureDetector(
        onTap: () {
          // Navigate to the next screen
          // Replace 'YourNextScreen()' with your actual screen widget
          Get.to(TrandingScreen());
        },
        child: Container(
          height: 45,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.white
                    : Colors.white70
                    : GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.black
                    : Colors.black54,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: GetIt.instance<FeedViewModel>().actualScreen == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: GetIt.instance<FeedViewModel>().actualScreen == 0
                      ? GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.white
                      : Colors.white70
                      : GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.black
                      : Colors.black54,
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ),
      );
    }
    else {
      return GestureDetector(
        onTap: () {
          GetIt.instance<FeedViewModel>().setActualScreen(index);
        },
        child: Container(
          height: 45,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: GetIt.instance<FeedViewModel>().actualScreen == 0
                    ? GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.white
                    : Colors.white70
                    : GetIt.instance<FeedViewModel>().actualScreen == index
                    ? Colors.black
                    : Colors.black54,
                size: NavigationIconSize,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: GetIt.instance<FeedViewModel>().actualScreen == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: GetIt.instance<FeedViewModel>().actualScreen == 0
                      ? GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.white
                      : Colors.white70
                      : GetIt.instance<FeedViewModel>().actualScreen == index
                      ? Colors.black
                      : Colors.black54,
                  fontSize: 11.0,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

}
