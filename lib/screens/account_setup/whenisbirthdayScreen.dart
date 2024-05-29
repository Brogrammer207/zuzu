import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'fillYourProfileScreen.dart';

class WhenIsYourBirthdayScreen extends StatefulWidget {
  const WhenIsYourBirthdayScreen({super.key});

  @override
  State<WhenIsYourBirthdayScreen> createState() => _WhenIsYourBirthdayScreenState();
}

class _WhenIsYourBirthdayScreenState extends State<WhenIsYourBirthdayScreen> {
  final TextEditingController dateController = TextEditingController();
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20
        ),
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
              height: 40,
            ),
            TextFormField(
              controller: dateController,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade100,
                hintText: "Pick Date",
                filled: true,
                suffixIcon: const Icon(Icons.date_range),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(
              height: context.width*.5,
              width: context.width,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                maximumYear: DateTime.now().year,
                maximumDate: DateTime.now(),
                initialDateTime: DateTime(2000),
                onDateTimeChanged: (DateTime date) {
                  dateController.text = DateFormat("dd/MM/yyyy").format(date);
                  // setState(() {
                  //   _selectedDate = date;
                  // });
                },
              ),
            )
          ],
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
