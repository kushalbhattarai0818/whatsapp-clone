import 'package:firebase_auth/firebase_auth.dart';


class FirebaseAuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<int> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return Future.value(0);
    } on FirebaseAuthException catch (e) {
      print("The error is $e");
      return Future.value(1);
    }
  }

  Future<int> signUp(String email, String password) async {
    await auth.createUserWithEmailAndPassword(email: email, password: password);

    return Future.value(1);
  }

  void signOut() async {
    await auth.signOut();
  }
}
