import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class LoginTestFirebaseUser {
  LoginTestFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

LoginTestFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<LoginTestFirebaseUser> loginTestFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<LoginTestFirebaseUser>(
      (user) {
        currentUser = LoginTestFirebaseUser(user);
        return currentUser!;
      },
    );
