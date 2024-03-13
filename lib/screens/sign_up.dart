import 'package:flutter/material.dart';

import '../Utilities.dart';
import 'custom_input1.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset("assets/images/img_4.png"),
            top: 0,
          ),
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
              bottom: 0,
              child: Container(
                width: Utilties.width(context) * 1,
                height: Utilties.height(context) * .18,
                // color: Colors.green,
                child: Image.asset(
                  "assets/images/img_7.png",
                  width: 100,
                  fit: BoxFit.fill,
                ),
              )),

          SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: Utilties.height(context) * .1),
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
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
                CutomInput(context, "Email", "muneebned844@gmail.com", "img_5",
                    emailController),
                CutomInput(context, "Password", "********", "img_5",
                    passwordController),
                CutomInput(context, "Confirm Password", "********", "img_5",
                    confirmPasswordController),
                Container(
                  // color: Colors.green,
                  width: Utilties.width(context) * .8,
                  constraints: BoxConstraints(maxWidth: 500),
                  margin: EdgeInsets.only(top: Utilties.height(context) * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Switch(
                        value: Utilties.selected,
                        activeColor: Color(0xff65D6FC),
                        focusColor: Colors.red,
                        onChanged: (value) {
                          Utilties.selected = value;

                          setState(() {});
                        },
                      ),
                      SizedBox(
                        width: Utilties.width(context) * .01,
                      ),
                      Expanded(
                        child: Text(
                          "Save the info?",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.8)),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => Utilties.signUp(
                      emailController.text, passwordController.text, context),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 500),
                    alignment: Alignment.center,
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, .8),
                          fontSize: 19,
                          letterSpacing: 2),
                    ),
                    margin:
                        EdgeInsets.only(top: Utilties.height(context) * .03),
                    height: Utilties.height(context) * 0.07,
                    width: Utilties.width(context) * .85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                            colors: [Color(0xff65D6FC), Color(0xff0DC7D2)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                        border: Border.all(color: Color(0xff65D6FC))),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
