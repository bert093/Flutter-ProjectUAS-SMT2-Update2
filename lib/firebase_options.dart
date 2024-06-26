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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDlMLey1gYFdjopnATAMSi9uLRe6fhYMo4',
    appId: '1:600188576586:web:32e007351435527d3a97b3',
    messagingSenderId: '600188576586',
    projectId: 'logintest-9f24a',
    authDomain: 'logintest-9f24a.firebaseapp.com',
    storageBucket: 'logintest-9f24a.appspot.com',
    measurementId: 'G-N52NPYR697',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDcSCpDl9pD0NJQyc69ZHINvXkceD2iGNU',
    appId: '1:600188576586:android:99cc7fb79ea63aad3a97b3',
    messagingSenderId: '600188576586',
    projectId: 'logintest-9f24a',
    storageBucket: 'logintest-9f24a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAapa8HmA_pGUclHh1dsocv6b_ImPv940s',
    appId: '1:600188576586:ios:d90927c79cf25f7e3a97b3',
    messagingSenderId: '600188576586',
    projectId: 'logintest-9f24a',
    storageBucket: 'logintest-9f24a.appspot.com',
    iosBundleId: 'com.example.prjUasD124',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAapa8HmA_pGUclHh1dsocv6b_ImPv940s',
    appId: '1:600188576586:ios:d90927c79cf25f7e3a97b3',
    messagingSenderId: '600188576586',
    projectId: 'logintest-9f24a',
    storageBucket: 'logintest-9f24a.appspot.com',
    iosBundleId: 'com.example.prjUasD124',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDlMLey1gYFdjopnATAMSi9uLRe6fhYMo4',
    appId: '1:600188576586:web:7b54925bf21f872c3a97b3',
    messagingSenderId: '600188576586',
    projectId: 'logintest-9f24a',
    authDomain: 'logintest-9f24a.firebaseapp.com',
    storageBucket: 'logintest-9f24a.appspot.com',
    measurementId: 'G-0YY05F8J44',
  );

}