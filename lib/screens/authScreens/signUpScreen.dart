import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import '../widgets/commanTextFromField.dart';
import 'signInScreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;
  bool showValidation = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.adaptive.arrow_back_rounded),
        // ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Create Your Account',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const CommonTextField(
                hintText: 'Email',
                prefix: Icon(Icons.email),
              ),
              const SizedBox(
                height: 10,
              ),
              const CommonTextField(
                hintText: 'Password',
                prefix: Icon(Icons.email),
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
                text: 'Sign Up',
                textColor: Colors.white,
                color: AppTheme.primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: size.width * 0.2,
                    color: Colors.black12,
                  ),
                  const Text(
                    "  Or continue with   ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6F6B7A),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: size.width * 0.2,
                    color: Colors.black12,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: socialIcon(
                      "assets/images/google.png",
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () async {},
                    child: socialIcon("assets/images/apple.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  socialIcon("assets/images/facebook.png"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                    text: "Already have an account ? ",
                    style: const TextStyle(
                      color: Color(0xff6F6B7A),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                          text: "Login now",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Get.back();
                            // Get.to(()=> const SignInScreen());
                          })
                    ]),
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
