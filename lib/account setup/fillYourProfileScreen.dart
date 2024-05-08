import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zuzu/account%20setup/createNewPinScreen.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import '../widgets/commanTextFromField.dart';

class FillYourProfileScreen extends StatefulWidget {
  const FillYourProfileScreen({super.key});

  @override
  State<FillYourProfileScreen> createState() => _FillYourProfileScreenState();
}

class _FillYourProfileScreenState extends State<FillYourProfileScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Fill Your Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [

              Stack(
                children: [
                  CircleAvatar(
                    maxRadius: 70,
                    minRadius: 70,
                    backgroundColor: Colors.grey.shade400,
                    child: const Icon(
                      Icons.person,
                      size: 70,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppTheme.primaryColor,
                      ),

                      child:Icon(Icons.edit,color: Colors.white,size: 15,),
                    ),
                  )
                ],

              ),
              const SizedBox(height: 20,),
              const CommonTextField(
                hintText: 'Full Name',
              ),
              const SizedBox(height: 5,),
              const CommonTextField(
                hintText: 'Nick Name',
              ),
              const SizedBox(height: 5,),
              const CommonTextField(
                hintText: 'Email',
                suffixIcon: Icon(Icons.email),
              ),
              const SizedBox(height: 5,),
              IntlPhoneField(
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                showDropdownIcon: true,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                dropdownTextStyle: const TextStyle(color: Colors.black),
                style: const TextStyle(color: AppTheme.secondaryColor),
                controller: phoneNumberController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    hintStyle: TextStyle(color: AppTheme.secondaryColor),
                    hintText: 'Phone Number',
                    labelStyle: TextStyle(color: AppTheme.secondaryColor),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppTheme.shadowColor)),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppTheme.shadowColor))),
                initialCountryCode: '+91',
                languageCode: '+91',
                onCountryChanged: (phone) {},
                onChanged: (phone) {},
              ),
              const SizedBox(height: 5,),
              const CommonTextField(
                hintText: 'Address',
                suffixIcon: Icon(Icons.navigation_rounded),
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
                    color: const Color(0x33ff4d67),
                    onPressed: () {
                      // Add your logic for button press
                    },
                  ),
                ),
                Expanded(
                  child: CommonButton(
                    text: 'Continue',
                    textColor: Colors.white,
                    color: AppTheme.primaryColor,
                    onPressed: () {
                      Get.to(const CreateNewPin());
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
