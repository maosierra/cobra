import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAtG0R5TMqnqvkR6KGM1PxebMDd87u_E20",
            authDomain: "cobra-37835.firebaseapp.com",
            projectId: "cobra-37835",
            storageBucket: "cobra-37835.appspot.com",
            messagingSenderId: "923042783460",
            appId: "1:923042783460:web:b7fd58195c900f9bbc8cf1",
            measurementId: "G-P0P4HZM6WY"));
  } else {
    await Firebase.initializeApp();
  }
}
