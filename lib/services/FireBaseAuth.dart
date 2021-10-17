import 'package:firebase_auth/firebase_auth.dart';
import 'package:minaral_water/services/userCreation.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Creating usern and saving uid

  MyUser _userFromFirebase(var user) {
    return user != null ? MyUser(user.uid) : MyUser(null);
  }
//building stream to track user

  Stream<MyUser> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
  }

  //Email Sign Up Firebase.

  Future signUpEmail(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;
      if (user != null) {
        return _userFromFirebase(user);
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Email Sign In Firebase.

  Future signInEmail(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(email: email, password: password);

      final User? user = userCredential.user;
      if (user != null) {
        return _userFromFirebase(user);
      }
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Log out Fireabase.

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
