import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zuzu/account%20setup/tellUsAboutYourSelfScreen.dart';
import 'package:zuzu/account%20setup/whenisbirthdayScreen.dart';
import 'package:zuzu/profileAndSetting/profileScreen.dart';
import 'package:zuzu/widgets/apptheme.dart';

import '../widgets/commanButton.dart';

class ChooseYourIntrestScreen extends StatefulWidget {
  const ChooseYourIntrestScreen({super.key});

  @override
  State<ChooseYourIntrestScreen> createState() => _ChooseYourIntrestScreenState();
}

class _ChooseYourIntrestScreenState extends State<ChooseYourIntrestScreen> {
  List<String> interests = [
    "Interest 1",
    "Interest 2",
    "Interest 3",
    "Interest 4",
    "Interest 5",
    "Interest 6",
    "Interest 7",
    "Interest 8",
    "Interest 9",
    "Interest 10",
    "Interest 11",
    "Interest 12",
    "Interest 13",
    "Interest 14",
    "Interest 15",
    "Interest 16",
    "Interest 17",
    "Interest 18",
    "Interest 19",
  ];
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
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Choose Your Interest and get the best video recommendation',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 5, childAspectRatio: (1 / .3)),
                itemCount: interests.length,
                itemBuilder: (context, index) {
                  return CommonButton(
                    text: interests[index],
                    textColor: Colors.white,
                    color: AppTheme.primaryColor,
                    onPressed: () {
                      // Add your logic for button press
                    },
                  );
                },
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
                    textColor: AppTheme.primaryColor,
                    color: Color(0xffffedf0),
                    onPressed: () {
                      Get.to(ProfileScreen());
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
                      Get.to(const TellUsAboutYourSelfScreen());
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
