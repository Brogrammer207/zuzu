import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'signInScreen.dart';
import 'signUpScreen.dart';

class LetsYouIN extends StatefulWidget {
  const LetsYouIN({super.key});

  @override
  State<LetsYouIN> createState() => _LetsYouINState();
}

class _LetsYouINState extends State<LetsYouIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back_rounded),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/girl.png',
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lets you in',
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
            LetsYouInContainer(
              text: 'Continue with Facebook',
              imagePath: 'assets/images/facebook.png',
              onPressed: () {

              },
            ),
            LetsYouInContainer(
              text: 'Continue with Google',
              imagePath: 'assets/images/google.png',
              onPressed: () {
                // Handle Facebook button press
              },
            ),
            LetsYouInContainer(
              text: 'Continue with Apple',
              imagePath: 'assets/images/apple.png',
              onPressed: () {
                // Handle Facebook button press
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30),
                  height: 1,
                  width: 120,
                  color: const Color(0xFFD2D8DC),
                ),
                //SizedBox(width: 10,),
                const Text('Or',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
                //SizedBox(width: 10,),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  height: 1,
                  width: 120,
                  color: const Color(0xFFD2D8DC),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CommonButton(text: 'Sign in with password',
                textColor: Colors.white,
                color: AppTheme.primaryColor,
                onPressed: () {
              Get.to(()=> const SignInScreen());
            }),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> const SignUpScreen());
              },
              behavior: HitTestBehavior.translucent,
              child: const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Dont have an Account? '),
                    TextSpan(
                      text: 'SignUp',
                      style: TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primaryColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
