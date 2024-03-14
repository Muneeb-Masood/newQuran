import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'sign_up.dart';
import 'home_screen.dart';

import '../Utilities.dart';
// import 'package:quran_app_ramadan/Utilities.dart';
// import 'package:quran_app_ramadan/screens/home_screen.dart';
// import 'package:quran_app_ramadan/screens/sign_up.dart';
// import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getValuesFromLocalDb(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_2.png",
            fit: BoxFit.fill,
            width: Utilties.width(context) * 1,
            height: Utilties.height(context) * 1,
          ),
          Align(
            child: Image.asset("assets/images/img_3.png"),
            alignment: Alignment.topCenter,
          ),
          Image.asset("assets/images/img_4.png")
        ],
      ),
    );
  }
}

void getValuesFromLocalDb(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));
  // SharedPreferences.setMockInitialValues({});

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? emailFromPrefs = await prefs.getString("email");

  if (emailFromPrefs == null) {

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUp(),
        ));
  } else {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
  print(emailFromPrefs);
}
