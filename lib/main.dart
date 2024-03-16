import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_quran_pc/screens/internetNotfound.dart';
import 'package:new_quran_pc/screens/search_screen.dart';
import 'package:new_quran_pc/screens/splash_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
