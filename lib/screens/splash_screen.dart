import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [

          Image.asset("assets/images/img_2.png" ,fit: BoxFit.fill,
          width: Utilties.width(context)*1,
          height: Utilties.height(context)*1,),

          Align(child: Image.asset("assets/images/img_3.png"),
          alignment: Alignment.topCenter,),

          Image.asset("assets/images/img_4.png")


        ],
      ),
    );
  }
}
