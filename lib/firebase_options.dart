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
    apiKey: 'AIzaSyBc8OEfhWX_h_0x5GrgDcndeve_86v1VcE',
    appId: '1:958435312336:web:da05f22b5a31f9cc4614d5',
    messagingSenderId: '958435312336',
    projectId: 'epicare2',
    authDomain: 'epicare2.firebaseapp.com',
    storageBucket: 'epicare2.firebasestorage.app',
    measurementId: 'G-CVGXDS9G1L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD35uZkF9MpFuJzFDlL_3Rz_5dhJLhrhrg',
    appId: '1:958435312336:android:4071bb7d160aa8b44614d5',
    messagingSenderId: '958435312336',
    projectId: 'epicare2',
    storageBucket: 'epicare2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZWobNIMLR14G7klY_kFOHySy_cU147go',
    appId: '1:958435312336:ios:fa52e41c88fcf6154614d5',
    messagingSenderId: '958435312336',
    projectId: 'epicare2',
    storageBucket: 'epicare2.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZWobNIMLR14G7klY_kFOHySy_cU147go',
    appId: '1:958435312336:ios:fa52e41c88fcf6154614d5',
    messagingSenderId: '958435312336',
    projectId: 'epicare2',
    storageBucket: 'epicare2.firebasestorage.app',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBc8OEfhWX_h_0x5GrgDcndeve_86v1VcE',
    appId: '1:958435312336:web:2053836ec67107114614d5',
    messagingSenderId: '958435312336',
    projectId: 'epicare2',
    authDomain: 'epicare2.firebaseapp.com',
    storageBucket: 'epicare2.firebasestorage.app',
    measurementId: 'G-8BQ0EMRSGQ',
  );

}