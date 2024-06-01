import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:zuzu/helper/helper.dart';
import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import '../widgets/comman_text_from_field.dart';
import 'createNewPinScreen.dart';
import 'setYourFingerPrintScreen.dart';

class FillYourProfileScreen extends StatefulWidget {
  const FillYourProfileScreen({super.key});

  @override
  State<FillYourProfileScreen> createState() => _FillYourProfileScreenState();
}

class _FillYourProfileScreenState extends State<FillYourProfileScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  File imageFile = File("");
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Helper.showImagePickerSheet(gotImage: (File file){
                  imageFile = file;
                  setState(() {});
                }, context: context);
              },
              child: Stack(
                children: [
                  AnimatedSwitcher(
                    duration: 500.milliseconds,
                    child: SizedBox(
                      key: ValueKey(imageFile.path),
                      height: 140,
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10000),
                        child: Image.file(imageFile,
                          fit: BoxFit.cover,
                          errorBuilder: (_,__,___)=>const Icon(
                          Icons.person,
                          size: 70,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 5,
                    bottom: 10,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppTheme.primaryColor,
                      ),

                      child:const Icon(Icons.edit,color: Colors.white,size: 15,),
                    ),
                  )
                ],

              ),
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
              suffixIcon: Icon(Icons.email, color: Colors.grey,),
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
              decoration: InputDecoration(
                counterStyle: const TextStyle(
                  color: AppTheme.primaryColor,
                  fontSize: 25,
                ),
                counter: const Offstage(),
                errorMaxLines: 2,
                enabled: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                hintText: "Phone Number",
                hintStyle: const TextStyle(
                  color: AppTheme.secondaryColor,
                  fontSize: 13,
                ),
                border: InputBorder.none,
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.grey.shade200)),
                errorBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.grey.shade200)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: Colors.grey.shade200)),
                disabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              initialCountryCode: '+91',
              languageCode: '+91',
              onCountryChanged: (phone) {},
              onChanged: (phone) {},
            ),
            const SizedBox(height: 5,),
            const CommonTextField(
              hintText: 'Address',
              suffixIcon: Icon(Icons.navigation_rounded, color: Colors.grey,),
            ),
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
                      Get.to(()=> const SetYourFingerPrintScreen());
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
