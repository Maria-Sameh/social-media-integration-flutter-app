import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:maria_sameh/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  late FirebaseAuthentication auth;
@override
  void initState() {
    // TODO: implement initState
  Firebase.initializeApp().whenComplete((){
    auth = FirebaseAuthentication();
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Login',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 40.0,
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
              prefixIcon: Icon(
                Icons.email,
              ),
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
              prefixIcon: Icon(
                Icons.lock,
              ),
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
            color: Colors.blue,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  auth.login(emailController.text,passwordController.text ).then((value){
                    if(value == null){
                      print('Login Error');
                    }else{
                      print('$value login successfully');
                    }
                  });
                });

              },
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
              ),
              TextButton(onPressed: () {}, child: Text('Register Now')),
            ],
          )
        ],
      ),
    );
  }
}
