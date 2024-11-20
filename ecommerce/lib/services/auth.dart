import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future deleteUser() async {
    User? user = await FirebaseAuth.instance.currentUser;
    user?.delete();
  }
}
