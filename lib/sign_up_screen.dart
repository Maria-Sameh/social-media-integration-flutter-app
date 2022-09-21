import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maria_sameh/modules/login/login_task.dart';
import 'package:maria_sameh/shared/cubit/cubit.dart';
import 'package:maria_sameh/shared/cubit/states.dart';



class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){},
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
                        'Sign UP',
                        style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Have an account?',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 17.0,
                                color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginTask()));
                              },
                              child: Text(
                                'Login Now',
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
                            color: Color(0xff0A66C2),
                            border:  Border.all(
                              color: Color(0xff0A66C2),
                            ),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              cubit.createUser(emailController.text,passwordController.text ).then((value){
                                if(value == null){
                                  print('Login Error');
                                }else{
                                  print('$value login successfully');
                                }
                              });
                            });
                          },
                          child: const Text(
                            'Register',
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
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/564x/fb/52/e3/fb52e39c5910bdbcc3b98d58d6ca6944--softball-catcher-avatar.jpg'),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png'),
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
