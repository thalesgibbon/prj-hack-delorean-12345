import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DeloreanFirebaseUser {
  DeloreanFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DeloreanFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DeloreanFirebaseUser> deloreanFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DeloreanFirebaseUser>(
            (user) => currentUser = DeloreanFirebaseUser(user));
