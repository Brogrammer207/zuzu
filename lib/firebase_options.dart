// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUEf_6mpf72dG3VJLf054kq4rXfd3TUiI',
    appId: '1:551941545670:android:43ed0eae9624f78aec41c7',
    messagingSenderId: '551941545670',
    projectId: 'tiktok-clone-kartik',
    storageBucket: 'tiktok-clone-kartik.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBW1SO3-lbXf9v9kCqhqZykTQJ5OVDZx2k',
    appId: '1:551941545670:ios:e61401f92f7995f5ec41c7',
    messagingSenderId: '551941545670',
    projectId: 'tiktok-clone-kartik',
    storageBucket: 'tiktok-clone-kartik.appspot.com',
    iosClientId: '551941545670-kns9kb6948d8kfcslgqldfmcdve1rj6p.apps.googleusercontent.com',
    iosBundleId: 'com.zuzu.zuzu',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCI7rbBDDYVBLhDCZEOPVY37S8aO6DMvso',
    appId: '1:551941545670:web:adf43a6b90ed0f2bec41c7',
    messagingSenderId: '551941545670',
    projectId: 'tiktok-clone-kartik',
    authDomain: 'tiktok-clone-kartik.firebaseapp.com',
    storageBucket: 'tiktok-clone-kartik.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBW1SO3-lbXf9v9kCqhqZykTQJ5OVDZx2k',
    appId: '1:551941545670:ios:e61401f92f7995f5ec41c7',
    messagingSenderId: '551941545670',
    projectId: 'tiktok-clone-kartik',
    storageBucket: 'tiktok-clone-kartik.appspot.com',
    iosClientId: '551941545670-kns9kb6948d8kfcslgqldfmcdve1rj6p.apps.googleusercontent.com',
    iosBundleId: 'com.zuzu.zuzu',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCI7rbBDDYVBLhDCZEOPVY37S8aO6DMvso',
    appId: '1:551941545670:web:342985a662698319ec41c7',
    messagingSenderId: '551941545670',
    projectId: 'tiktok-clone-kartik',
    authDomain: 'tiktok-clone-kartik.firebaseapp.com',
    storageBucket: 'tiktok-clone-kartik.appspot.com',
  );

}