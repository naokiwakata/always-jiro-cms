// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDtwDYYTy26YfI0kviyIJpcve6OeAoOnIg',
    appId: '1:119401972149:web:25769d3e55b346af6d19fc',
    messagingSenderId: '119401972149',
    projectId: 'jiro-tabetai-3f183',
    authDomain: 'jiro-tabetai-3f183.firebaseapp.com',
    storageBucket: 'jiro-tabetai-3f183.appspot.com',
    measurementId: 'G-LDEGRQSK70',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDksCp40GkOay1g-VU204zLFrL5JejA9p8',
    appId: '1:119401972149:android:5b6ba6bc0cad2a166d19fc',
    messagingSenderId: '119401972149',
    projectId: 'jiro-tabetai-3f183',
    storageBucket: 'jiro-tabetai-3f183.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBc47ecoyJ0is7u2-8tV3iuwgEYzZx1Cgs',
    appId: '1:119401972149:ios:eb0d1eb23652c48a6d19fc',
    messagingSenderId: '119401972149',
    projectId: 'jiro-tabetai-3f183',
    storageBucket: 'jiro-tabetai-3f183.appspot.com',
    androidClientId: '119401972149-7fv9mj5lb4mfdkrvveic2942ujeqd05t.apps.googleusercontent.com',
    iosClientId: '119401972149-oimpb4pldjmhqaj3094u4brhclk8qjma.apps.googleusercontent.com',
    iosBundleId: 'com.example.alwaysJiroCms',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBc47ecoyJ0is7u2-8tV3iuwgEYzZx1Cgs',
    appId: '1:119401972149:ios:eb0d1eb23652c48a6d19fc',
    messagingSenderId: '119401972149',
    projectId: 'jiro-tabetai-3f183',
    storageBucket: 'jiro-tabetai-3f183.appspot.com',
    androidClientId: '119401972149-7fv9mj5lb4mfdkrvveic2942ujeqd05t.apps.googleusercontent.com',
    iosClientId: '119401972149-oimpb4pldjmhqaj3094u4brhclk8qjma.apps.googleusercontent.com',
    iosBundleId: 'com.example.alwaysJiroCms',
  );
}