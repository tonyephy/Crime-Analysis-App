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
    apiKey: '',
    appId: '1:760134686380:web:b5d3a13ae908e52b0e3109',
    messagingSenderId: '760134686380',
    projectId: 'crime-analysis-app-b235b',
    authDomain: 'crime-analysis-app-b235b.firebaseapp.com',
    storageBucket: 'crime-analysis-app-b235b.firebasestorage.app',
    measurementId: 'G-QZTTRR9JWE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDsQrAzrjdob30krZvuAuFtqzbmme8bxqs',
    appId: '1:760134686380:android:2cbe162885ffc0120e3109',
    messagingSenderId: '760134686380',
    projectId: 'crime-analysis-app-b235b',
    storageBucket: 'crime-analysis-app-b235b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDO2syjtoqHIc8mHfg4JekZngLfBSZtXfE',
    appId: '1:760134686380:ios:2b411a267279c8690e3109',
    messagingSenderId: '760134686380',
    projectId: 'crime-analysis-app-b235b',
    storageBucket: 'crime-analysis-app-b235b.firebasestorage.app',
    iosBundleId: 'com.example.crimeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDO2syjtoqHIc8mHfg4JekZngLfBSZtXfE',
    appId: '1:760134686380:ios:2b411a267279c8690e3109',
    messagingSenderId: '760134686380',
    projectId: 'crime-analysis-app-b235b',
    storageBucket: 'crime-analysis-app-b235b.firebasestorage.app',
    iosBundleId: 'com.example.crimeApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBnXtpX4wuTKBTO5TJKluoKZvorqak7G1Q',
    appId: '1:760134686380:web:38db438cf0115f540e3109',
    messagingSenderId: '760134686380',
    projectId: 'crime-analysis-app-b235b',
    authDomain: 'crime-analysis-app-b235b.firebaseapp.com',
    storageBucket: 'crime-analysis-app-b235b.firebasestorage.app',
    measurementId: 'G-S4THM52DDX',
  );
}