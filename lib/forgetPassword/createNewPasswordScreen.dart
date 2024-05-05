import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zuzu/account%20setup/chooseYourIntrest.dart';
import 'package:zuzu/widgets/apptheme.dart';

import '../account setup/setYourFingerPrintScreen.dart';
import '../widgets/commanButton.dart';
import '../widgets/commanTextFromField.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  bool value = false;
  bool showValidation = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset('assets/images/cake.png'),
              const SizedBox(
                height: 20,
              ),
              const CommonTextField(
                hintText: 'password',
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(
                height: 10,
              ),
              const CommonTextField(
                hintText: 'Confirm Password',
                prefix: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Transform.scale(
                        scale: 1.1,
                        child: Theme(
                          data: ThemeData(unselectedWidgetColor: showValidation == false ? Colors.white : Colors.red),
                          child: Checkbox(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              value: value,
                              activeColor: AppTheme.primaryColor,
                              visualDensity: const VisualDensity(vertical: 0, horizontal: 0),
                              onChanged: (newValue) {
                                setState(() {
                                  value = newValue!;
                                  setState(() {});
                                });
                              }),
                        ),
                      ),
                      const Text('Remember me',
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                text: 'Continue',
                color: AppTheme.primaryColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog();
                    },
                  );
                },
              ),

              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container socialIcon(image) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Image.asset(
        image,
        height: 35,
      ),
    );
  }
}
