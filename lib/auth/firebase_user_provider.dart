import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class CobraFirebaseUser {
  CobraFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CobraFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CobraFirebaseUser> cobraFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CobraFirebaseUser>(
      (user) {
        currentUser = CobraFirebaseUser(user);
        if (!kIsWeb) {
          FirebaseCrashlytics.instance.setUserIdentifier(user?.uid ?? '');
        }
        return currentUser!;
      },
    );
