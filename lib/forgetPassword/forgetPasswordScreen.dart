import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zuzu/forgetPassword/forgetpasswordPInScreen.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: const Text('Forget Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15,right: 15),
          child: Column(
            children: [
              Image.asset('assets/images/cake.png',height: 250,),
              const SizedBox(height: 20,),
              const Text(
                'Select Which contact details should we use to reset your password',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11), border: Border.all(color: Colors.grey.shade200)),
                child: const Row(
                  children: [
                    CircleAvatar(
                      minRadius: 40,
                      maxRadius: 40,
                      backgroundColor: Color(0x1aff4d67),
                      child: Center(child: Icon(Icons.message)),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'via SMS :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '+91 7665096245',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11), border: Border.all(color: Colors.grey.shade200)),
                child: const Row(
                  children: [
                    CircleAvatar(
                      minRadius: 40,
                      maxRadius: 40,
                      backgroundColor: Color(0x1aff4d67),
                      child: Center(child: Icon(Icons.message)),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'via SMS :',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '+91 7665096245',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              CommonButton(
                text: 'Continue',
                textColor: Colors.white,
                color: AppTheme.primaryColor,
                onPressed: () {
                  Get.to(const ForgetPasswordPin());
                  // Add your logic for button press
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
