import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'inboxActivity/allActivityScreen.dart';
import 'profileAndSetting/profileScreen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('HomePage'),
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(const ProfileScreen());
            },
              child: Icon(Icons.person)),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Get.to(const AllActivityScreen());
            },
              child: Icon(Icons.message)),
          SizedBox(width: 15,),
        ],
      ),
    );
  }
}
