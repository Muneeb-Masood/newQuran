import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff112095),
                  Color(0xff09245A),



                ]
              )
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Text("Sign In",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: "Poppins"
                    ),),
                ),
                Container(
    height: 60,
                  margin: EdgeInsets.only(
                    top: 60,
                    left: 20,
                      right: 20
                  ),
                  decoration: BoxDecoration(
                  color: Color.fromRGBO(255,255,255, 0.1),
                    borderRadius: BorderRadius.circular(20)
                    
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email" , style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.3)),),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                            
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )

              ],
            ),
          ),

          Positioned(child: Container(child: Image.asset("assets/images/img_7.png",
          fit: BoxFit.contain,),
          // color: Colors.red,
          width: Utilties.width(context)*1,),
           bottom: 0,)
        ],
      )

    );
  }
}
