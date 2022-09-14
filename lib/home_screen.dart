import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_auth.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      appBar: AppBar(
        backgroundColor: Colors.teal,
        // leading: const Icon(
        //   Icons.menu,
        // ),
        title:  Text(
            'Myapp'
        ),
        actions:
        [
          IconButton(
            onPressed: ()
            {
              auth.logout().then((value) {
                if(value){
                  print('Logout successfully');
                }else{
                  print('error logging out');
                }
              });
            },
            icon: const Icon(
                Icons.logout

            ),
          ),

          IconButton(
            onPressed: ()
            {

            },
            icon: const Icon(
                Icons.search,

            ),
          ),
        ],


      ),


      );



  }
}