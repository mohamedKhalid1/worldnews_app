import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    required String bio,
  }) async {
    String res = "Some error has occurred";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          bio.isNotEmpty) {
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);
        await _firestore.collection("users").doc(cred.user!.uid).set({
          "email": email,
          "password": password,
          "username": username,
          "uid": cred.user!.uid,
          "bio": bio,
        });
        res = "success";
      }
    } catch (e) {
      print(e.toString());
    }
    return res;
  }
}
