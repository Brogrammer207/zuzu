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

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Tell us about yourself'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Text(
                'Choose Your identity & help us to find accurate content for you',
                style: TextStyle(color: Colors.black),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        isMale= true;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        maxRadius: 80,
                        minRadius: 80,
                        backgroundColor: isMale ? AppTheme.primaryColor : Colors.grey.shade400,
                        child: const Column(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        isMale= false;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        maxRadius: 80,
                        minRadius: 80,
                        backgroundColor: isMale ? Colors.grey.shade400 : AppTheme.primaryColor,
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16
            ),
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
                      Get.to(()=>const WhenIsYourBirthdayScreen());
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
