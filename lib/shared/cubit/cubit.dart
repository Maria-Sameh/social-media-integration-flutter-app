import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:maria_sameh/shared/cubit/states.dart';

import '../../models/user_model.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  User get user => _firebaseAuth.currentUser!;

  UserModel? currentUser;
  AccessToken? accessToken;

  // Users Login via Google third_party provider
  Future<String?> loginWithGoogle() async {
    try {
      emit(LoginGoogleLoadingState());
      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult =
      await _firebaseAuth.signInWithCredential(authCredential);
      final User? user = authResult.user;
      if (user != null) {
        emit(LoginGoogleSuccessState());
        return '$user';
      }
    } on FirebaseAuthException catch (error) {
      emit(LoginGoogleErrorState(error.toString()));
    }
    return null;
  }

  // Users Login via Facebook third_party provider
  Future<UserCredential?> signInWithFacebook() async {
    emit(LoginFacebookLoadingState());
    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      // Create a credential from the access token
      final OAuthCredential credential =
      FacebookAuthProvider.credential(result.accessToken!.token);

      emit(LoginFacebookSuccessState());
      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } else if (result.status == LoginStatus.failed) {
      emit(LoginFacebookErrorState(LoginStatus.failed.toString()));
    }

    return null;
  }

  Future<void> getUserInfo() async {
    // accessToken = result.accessToken;
    final data = await FacebookAuth.i.getUserData();

    UserModel model = UserModel.fromJson(data);

    currentUser = model;

    emit(LoginGetFacebookUserInfoState());
  }

  Future<bool> logout() async {
    try {
      emit(LogoutLoadingState());
      googleSignIn.disconnect();
      FacebookAuth.instance.logOut();
      currentUser = null;
      accessToken = null;

      emit(LogoutSuccessState());
      return true;
    } on FirebaseAuthException catch (e) {
      emit(LogoutErrorState(e.toString()));
      return false;
    }
  }
}
