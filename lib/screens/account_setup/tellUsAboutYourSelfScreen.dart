import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'whenisbirthdayScreen.dart';

class TellUsAboutYourSelfScreen extends StatefulWidget {
  const TellUsAboutYourSelfScreen({super.key});

  @override
  State<TellUsAboutYourSelfScreen> createState() => _TellUsAboutYourSelfScreenState();
}

class _TellUsAboutYourSelfScreenState extends State<TellUsAboutYourSelfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Choose Your Interest'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const Text(
                'Choose Your identity & help us to find accurate content for you',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 100,
              ),
              const CircleAvatar(
                maxRadius: 80,
                minRadius: 80,
                backgroundColor: AppTheme.primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      size: 70,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                maxRadius: 80,
                minRadius: 80,
                backgroundColor: Colors.grey.shade400,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
                      size: 70,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Female',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(15.0).copyWith(bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    text: 'Skip',
                    color: const Color(0x33ff4d67),
                    textColor: AppTheme.primaryColor,
                    onPressed: () {
                      // Add your logic for button press
                    },
                  ),
                ),
                Expanded(
                  child: CommonButton(
                    text: 'Continue',
                    color: AppTheme.primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      Get.to(const WhenIsYourBirthdayScreen());
                      // Add your logic for button press
                    },
                  ),
                )
              ],
            )),
      ),
    );
  }
}
