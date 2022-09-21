import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maria_sameh/shared/cubit/cubit.dart';
import 'package:maria_sameh/shared/cubit/states.dart';
import 'package:maria_sameh/sign_up_screen.dart';

import '../user_data/fb_user_data.dart';
import '../user_data/google_user_data.dart';


class LoginTask extends StatefulWidget {
  LoginTask({Key? key}) : super(key: key);

  @override
  State<LoginTask> createState() => _LoginTaskState();
}

class _LoginTaskState extends State<LoginTask> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){
          if (state is LoginFacebookSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const FbUserInfoScreen()),
                  (route) => false,
            );
          }
          if (state is LoginGoogleSuccessState) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) =>  const GoogleUserInfoScreen()),
                  (route) => false,
            );
          }
        },
        builder: (context,state){
          var cubit = LoginCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  margin: const EdgeInsets.only(top: 90.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => SignUpScreen()));
                              },
                              child: Text(
                                'Register here',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 17.0,
                                    color: Colors.grey),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: const InputDecoration(
                          labelText: 'Email Adress',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        onFieldSubmitted: (value) {
                          print(value);
                        },
                        onChanged: (value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            border: Border.all(
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: MaterialButton(
                          onPressed: () {
                            // setState(() {
                            //   auth
                            //       .login(
                            //       emailController.text, passwordController.text)
                            //       .then((value) {
                            //     if (value == null) {
                            //       print('Login Error');
                            //     } else {
                            //       print('$value login successfully');
                            //     }
                            //     Navigator.push(
                            //         context,
                            //         MaterialPageRoute(
                            //             builder: (context) => HomeScreen()));
                            //   });
                            // });
                          },
                          child: const Text(
                            'let\'s get rolling!',
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '-OR-',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'continue with',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // MaterialButton(
                          //   onPressed: () {
                          //     cubit.loginWithGoogle().then((value) {}).catchError((error){});
                          //   },
                          //   child: Text('Google'),
                          // ),
                          // SizedBox(width: 10.0,),
                          // MaterialButton(
                          //   onPressed: () {
                          //     cubit.signInWithFacebook().then((value) {
                          //       print('login with facebook successfully');
                          //     }).catchError((error){
                          //       print('login error:$error');
                          //
                          //     });
                          //   },
                          //   child: Text('Facebook'),
                          // ),
                          // InkWell(
                          //   onTap: () {
                          //
                          //       auth.loginWithGoogle().then((value) {
                          //         if (value == null) {
                          //           print('sign in with google Error');
                          //         } else {
                          //           print('$value login successfully');
                          //         }
                          //         Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          //       }).catchError((error){
                          //         print(error.toString());
                          //       });
                          //
                          //
                          //   },
                          //   child: InkWell(
                          //     onTap: (){
                          //       auth.signInWithFacebook().then((value) {
                          //
                          //       }).catchError((error){
                          //
                          //       });
                          //
                          //     },
                          //     child: Container(
                          //       child: CircleAvatar(
                          //         radius: 25.0,
                          //         backgroundImage: NetworkImage(
                          //             'https://i.pinimg.com/564x/fb/52/e3/fb52e39c5910bdbcc3b98d58d6ca6944--softball-catcher-avatar.jpg'),
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          // Container(
                          Row(
                            children: [
                              InkWell(
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/google.jpeg'),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  cubit
                                      .loginWithGoogle()
                                      .then((value) {
                                    print('google login successfully');
                                  }).catchError((error) {
                                    print(
                                        'error logging in with google error: $error');
                                  });
                                },
                              ),
                            ],
                          ),
                          const SizedBox(width: 25.0,),
                          Row(
                            children: [
                              InkWell(
                                child: Container(
                                  height: 50.0,
                                  width: 50.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0, 2),
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/facebook.jpeg'),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  cubit
                                      .signInWithFacebook()
                                      .then((value) {
                                    print('facebook login successfully');
                                  }).catchError((error) {
                                    print(
                                        'error logging in with facebook error: $error');
                                  });
                                },
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'or login later',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.normal,
                              fontSize: 17.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'By signing you agree to Hotdesk\'s',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10.0,
                                color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Terms of Services',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 10.0,
                                    color: Colors.blueAccent),
                              )),
                          Text(
                            '&',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10.0,
                                color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 10.0,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
