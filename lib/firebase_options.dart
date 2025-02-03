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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAlyEaEnJgzfcdtf_3Qt9hQyyVYBw5smtU',
    appId: '1:123254754378:web:89394e80b49c3e8a81aab3',
    messagingSenderId: '123254754378',
    projectId: 'mental-wellness-companion',
    authDomain: 'mental-wellness-companion.firebaseapp.com',
    storageBucket: 'mental-wellness-companion.appspot.com',
    measurementId: 'G-SRG9YM7FT3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxNyWWXoSb3DAX9JL4hWI7QLQh_IdzIOo',
    appId: '1:123254754378:android:3d0a29665ec52c8381aab3',
    messagingSenderId: '123254754378',
    projectId: 'mental-wellness-companion',
    storageBucket: 'mental-wellness-companion.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAlyEaEnJgzfcdtf_3Qt9hQyyVYBw5smtU',
    appId: '1:123254754378:web:3c14d59ff00a3d2581aab3',
    messagingSenderId: '123254754378',
    projectId: 'mental-wellness-companion',
    authDomain: 'mental-wellness-companion.firebaseapp.com',
    storageBucket: 'mental-wellness-companion.appspot.com',
    measurementId: 'G-CM2CKXV7XJ',
  );
}
