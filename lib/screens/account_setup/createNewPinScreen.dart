import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'setYourFingerPrintScreen.dart';

class CreateNewPin extends StatefulWidget {
  const CreateNewPin({Key? key});

  @override
  State<CreateNewPin> createState() => _CreateNewPinState();
}

class _CreateNewPinState extends State<CreateNewPin> {
  TextEditingController otpController = TextEditingController();
  final _pinPutController = TextEditingController();

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(19),
      border: Border.all(color: Colors.grey),
    ),
  );

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
          title: const Text('Create New Pin'),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Add a Pin number to make your account more secure',
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  height: 40,
                ),
                Pinput(
                  controller: _pinPutController,
                  androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (String verificationCode) {
                    // debugPrint('onCompleted: $pin');
                  },
                  onChanged: (code) {
                    // debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100,),
                CommonButton(
                  text: 'Continue',
                  textColor: Colors.white,
                  color: AppTheme.primaryColor,
                  onPressed: () {
                    Get.to(const SetYourFingerPrintScreen());
                    // Add your logic for button press
                  },
                ),
              ]),
        )));
  }
}
