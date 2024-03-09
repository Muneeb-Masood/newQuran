import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/screens/home_screen.dart';

class Utilties{

  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static signUp(String email , String password , BuildContext context) async{

    try{
      FirebaseAuth object = FirebaseAuth.instance;
      UserCredential credential =await object.createUserWithEmailAndPassword(email: email, password: password);
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));

    }
    on FirebaseAuthException catch(error){
     print(error);
    }


  }

}
