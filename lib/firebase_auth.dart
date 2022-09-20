
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';



class FirebaseAuthentication{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();


  Future<String?> createUser(String email,String password)async{
    try{
      UserCredential credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!.uid;
    } on FirebaseAuthException catch (error){
      print(error.toString());
    }
    return null;

  }
  Future<String?> login(String email,String password)async{
    try{
      UserCredential credential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user!.uid;
    } on FirebaseAuthException catch (error){
      print(error.toString());
    }
    return null;

  }

  Future<String?> loginWithGoogle()async{
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );
    final UserCredential authResult = await _firebaseAuth.signInWithCredential(authCredential);
    final User? user = authResult.user;
    if(user != null){
      return '$user';
    }
    return null;
  }

  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if(result.status == LoginStatus.success){
      // Create a credential from the access token
      final OAuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return null;
  }



  Future<bool> logout()async{
    try{
      googleSignIn.disconnect();
      _firebaseAuth.signOut();
      return true;

    }on FirebaseAuthException{
      return false;
    }
  }
}