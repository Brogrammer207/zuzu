import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:zuzu/helper/helper.dart';

class FirebaseAuthentication {
  static FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  static Future<UserCredential> signInWithGoogle(BuildContext c) async {
    final loader = c.showLoader();
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final item = await FirebaseAuth.instance.signInWithCredential(credential);
      c.hideLoader(loader);
      return item;
    } catch(e){
      c.hideLoader(loader);
      throw Exception(e);
    }
  }
}
