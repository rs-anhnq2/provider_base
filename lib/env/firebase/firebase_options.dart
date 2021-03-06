// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyASUoegHOhnxGWHDsiKyW_GzziwAj9EtS0',
    appId: '1:341639729821:web:c5a65bf1b5378b3d333a74',
    messagingSenderId: '341639729821',
    projectId: 'provider-base-prod',
    authDomain: 'provider-base-prod.firebaseapp.com',
    storageBucket: 'provider-base-prod.appspot.com',
    measurementId: 'G-99KJ9XGQBH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSpMJiTMhaheL58ML1E3bar1pZIR4hdxg',
    appId: '1:341639729821:android:cf88e66455fc0ecc333a74',
    messagingSenderId: '341639729821',
    projectId: 'provider-base-prod',
    storageBucket: 'provider-base-prod.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDe3vcLhz2qjIsw_quclDDMs8cpddsBnBM',
    appId: '1:341639729821:ios:4efb82dc65ff0df0333a74',
    messagingSenderId: '341639729821',
    projectId: 'provider-base-prod',
    storageBucket: 'provider-base-prod.appspot.com',
    iosClientId: '341639729821-tojledn557ql4d4nqcf3io4sji881raq.apps.googleusercontent.com',
    iosBundleId: 'com.example.providerBase',
  );
}
