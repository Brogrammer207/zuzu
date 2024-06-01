import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zuzu/helper/helper.dart';
import 'package:zuzu/repository/api_repo.dart';
import 'package:zuzu/repository/api_urls.dart';

import '../../firebase/firebase_authentication.dart';
import '../../models/model_login_response.dart';
import '../widgets/apptheme.dart';
import '../widgets/commanButton.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';

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

                FirebaseAuthentication.signInWithGoogle(context).then((v) async {
                  Repositories().postApi(url: ApiUrls.loginUrl,
                  mapData: {
                    'type': "2",
                    'email': v.user!.email!,
                    'mobile_number': v.user?.phoneNumber,
                    'device_type': "1",
                    'device_token': await FirebaseMessaging.instance.getToken(),
                  },
                    context: context
                  ).then((v) async {
                    ModelLoginResponse model = modelLoginResponseFromJson(v);
                    showToast(model.message);
                    if(model.status == 200){
                      SharedPreferences sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setString(Repositories.userInfo, v);
                    }
                  });
                });
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
