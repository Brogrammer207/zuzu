import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'inboxActivity/allActivityScreen.dart';
import 'profile_and_setting/profileScreen.dart';

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
        title: const Text('HomePage'),
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(()=> const ProfileScreen());
            },
              child: const Icon(Icons.person)),
          const SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Get.to(const AllActivityScreen());
            },
              child: const Icon(Icons.message)),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
}
