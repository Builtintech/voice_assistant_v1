import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authservice {
  Future signInwithGoogle() async {
    //interacting with google signin
    final GoogleSignInAccount? guser = await GoogleSignIn().signIn();

    // obtain auth details
    final GoogleSignInAuthentication gAuth = await guser!.authentication;

    // create new users
    final Credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // now signincredential
    return await FirebaseAuth.instance.signInWithCredential(Credential);
  }
}
