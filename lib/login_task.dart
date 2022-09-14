import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maria_sameh/sign_up_screen.dart';

import 'firebase_auth.dart';
import 'home_screen.dart';

class LoginTask extends StatefulWidget {
  LoginTask({Key? key}) : super(key: key);

  @override
  State<LoginTask> createState() => _LoginTaskState();
}

class _LoginTaskState extends State<LoginTask> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  late FirebaseAuthentication auth;

  @override
  void initState() {
    // TODO: implement initState
    Firebase.initializeApp().whenComplete(() {
      auth = FirebaseAuthentication();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
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
                  decoration:  BoxDecoration(
                      color: Colors.blueAccent,
                      border:  Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        auth
                            .login(
                                emailController.text, passwordController.text)
                            .then((value) {
                          if (value == null) {
                            print('Login Error');
                          } else {
                            print('$value login successfully');
                          }
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        });

                      });
                    },
                    child: const Text(
                      'let\'s get rolling!',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Magic Link?Click',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0,
                          color: Colors.grey),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'here',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 15.0,
                              color: Colors.grey),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'or continue with',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0,
                          color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {

                            auth.loginWithGoogle().then((value) {
                              if (value == null) {
                                print('sign in with google Error');
                              } else {
                                print('$value login successfully');
                              }
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                            }).catchError((error){
                              print(error.toString());
                            });


                        },
                        child: Container(
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/564x/fb/52/e3/fb52e39c5910bdbcc3b98d58d6ca6944--softball-catcher-avatar.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png'),
                        ),
                      ),
                    ],
                  ),
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
                        fontSize: 15.0,
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
  }
}
