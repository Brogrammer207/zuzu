import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../profile_and_setting/profileScreen.dart';
import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'tellUsAboutYourSelfScreen.dart';

class ChooseYourIntrestScreen extends StatefulWidget {
  const ChooseYourIntrestScreen({super.key});

  @override
  State<ChooseYourIntrestScreen> createState() => _ChooseYourIntrestScreenState();
}

class _ChooseYourIntrestScreenState extends State<ChooseYourIntrestScreen> {
  List<String> interests = [
    "Reading",
    "Hiking",
    "Photography",
    "Cooking",
    "Gardening",
    "Playing Guitar",
    "Painting",
    "Traveling",
    "Yoga",
    "Running",
    "Coding",
    "Volunteering",
    "Watching Movies",
    "Playing Video Games",
    "Fishing",
    "Skiing",
    "Playing Chess",
    "Learning a New Language",
    "Woodworking",
  ];

  Set<String> selectedInterest = {};

  @override
  Widget build(BuildContext context) {
    interests.sort((a,b)=> a.compareTo(b));
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20
        ),
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
            Wrap(
              children: interests.map((e) {
                final selected = selectedInterest.contains(e);
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 10
                  ),
                  child: FilterChip(
                      label: Text(
                        e,
                        style: TextStyle(fontWeight: FontWeight.bold, color: selected ? Colors.white : Colors.black),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1000),
                        side: const BorderSide(
                          color: AppTheme.primaryColor,
                          width: 2
                        )
                      ),
                      backgroundColor: selected ? AppTheme.primaryColor : Colors.white,
                      onSelected: (v) {
                        if (selected) {
                          selectedInterest.remove(e);
                        } else {
                          selectedInterest.add(e);
                        }
                        setState(() {});
                      }),
                );
              }).toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Row(
                children: [
                  Expanded(
                    child: CommonButton(
                      text: 'Skip',
                      textColor: AppTheme.primaryColor,
                      color: const Color(0xffffedf0),
                      onPressed: () {
                        Get.to(()=> const ProfileScreen());
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
                        Get.to(()=> const TellUsAboutYourSelfScreen());
                        // Add your logic for button press
                      },
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
