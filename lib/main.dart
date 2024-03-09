import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/screens/drawer.dart';
import 'package:quran_app_ramadan/screens/search_screen.dart';
import 'package:quran_app_ramadan/screens/sign_in.dart';
import 'package:quran_app_ramadan/screens/sign_up.dart';
import 'package:quran_app_ramadan/screens/splash_screen.dart';
import 'package:quran_app_ramadan/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:quran_app_ramadan/screens/testing_api.dart';
import 'firebase_options.dart';



void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MaterialApp(
          home: SearchScreen(),
      )
  );

}


