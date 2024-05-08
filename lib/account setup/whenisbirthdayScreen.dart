import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuzu/account%20setup/tellUsAboutYourSelfScreen.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'fillYourProfileScreen.dart';

class WhenIsYourBirthdayScreen extends StatefulWidget {
  const WhenIsYourBirthdayScreen({super.key});

  @override
  State<WhenIsYourBirthdayScreen> createState() => _WhenIsYourBirthdayScreenState();
}

class _WhenIsYourBirthdayScreenState extends State<WhenIsYourBirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('When is your Birthday ?'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const Text(
                'Your Birthday will not be show to the public',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
             Image.asset('assets/images/cake.png',height: 200,),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 10,right: 10),
                decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('12/27/1995'),
                    Icon(Icons.date_range)
                  ],
                ),
              )
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
                    color: Color(0x33ff4d67),
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
                      Get.to(const FillYourProfileScreen());
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
