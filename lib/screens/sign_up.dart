import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';
import 'custom_input1.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Image.asset("assets/images/img_4.png"),
          top: 0,),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff112095), Color(0xff09245A)],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Container(
          //     color: Colors.green,
          //     width: Utilties.width(context) * 1,
          //     // height: Utilties.height(context) * .2,
          //     child: FittedBox(
          //
          //       child: Image.asset("assets/images/img_7.png"),
          //     ),
          //   ),
          // ),
          Positioned(
              bottom:0,
              child:Container(
                width: Utilties.width(context)*1,
                height: Utilties.height(context)*.18,
                // color: Colors.green,
                child: Image.asset(
                  "assets/images/img_7.png",
                  width: 100,
                  fit: BoxFit.fill,
                ),
              )
          ),

          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: Utilties.height(context)*.1),
                  // color: Colors.red,
                  // alignment: Alignment.topCenter,
                  width: Utilties.width(context) * .4,
                  height: Utilties.height(context) * .1,
                  child: FittedBox(
                    child: Text(
                      "Sign Up",

                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(255, 255, 255, .8),
                            fontSize: 40,
                            letterSpacing: 2
                        ),
                    ),
                  ),
                ),
              ),
              CutomInput(context, "Email", "muneebned844@gmail.com", "img_5" , emailController),
              CutomInput(context, "Password", "********", "img_5" , passwordController),
              CutomInput(context, "Confirm Password", "********", "img_5" , passwordController),
              Container(
                margin: EdgeInsets.only(left: 16,top: Utilties.height(context)*0.04),
                child: Row(
                  children: [
                    Switch(value: false, onChanged: (value) {
                      value=!value;
                      setState(() {

                      });
                    },),
                    SizedBox(width: Utilties.width(context)*.06,),
                    Text("Save the info?" ,style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff65D6FC)
                    ),)
                  ],
                ),
              ),
              InkWell(
                onTap: () => Utilties.signUp(emailController.text, passwordController.text, context),

                child: Container(
                  alignment: Alignment.center,
                  child: Text("SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, .8),
                    fontSize: 19,
                    letterSpacing: 2
                  ),),
                  margin: EdgeInsets.only(
                    top: Utilties.height(context)*.03
                  ),
                    height: Utilties.height(context)*0.07,
                  width: Utilties.width(context)*.85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(colors: [Color(0xff65D6FC),
                    Color(0xff0DC7D2)] , begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                    border: Border.all(
                      color: Color(0xff65D6FC)
                    )
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}