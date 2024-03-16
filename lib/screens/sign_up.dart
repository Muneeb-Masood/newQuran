import 'package:flutter/material.dart';
import 'package:new_quran_pc/screens/sign_in.dart';

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
    return SafeArea(
      child: Scaffold(
        body:
        Utilties.signUpVar?

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff112095), Color(0xff09245A)],
            ),
          ),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )
            :Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/img_14.png"),
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
                      // color: Colors.green,
                      margin: EdgeInsets.only(top: Utilties.height(context) * .1),
                      constraints: BoxConstraints(
                        maxWidth: 500
                      ),
                      // color: Colors.red,
                      // alignment: Alignment.topCenter,
                      width: Utilties.width(context) * .8,
                      height: Utilties.height(context) * .1,

                        child:
                        Text(
                          textAlign: TextAlign.center,
                          "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, .8),
                              fontSize: 40,
                              letterSpacing: 2),
                        ),

                    ),

                  ),
                  Container(
                    width: Utilties.width(context) * .33,
                    child: Divider(
                      color: Color(0xff65D6FC),
                      thickness: 4,
                      height: 4,
                    ),
                  ),
                  SizedBox(height: 6,),
                  CutomInput(context, "Email", "muneebned844@gmail.com", "img_5.png",
                      emailController),
                  Container(
                      height: Utilties.height(context)*.04),
                  CutomInput(context, "Password", "********", "img_6.png",
                      passwordController),
                  Container(
                      height: Utilties.height(context)*.04),
                  CutomInput(context, "Confirm Password", "********", "img_6.png",
                      confirmPasswordController),
                  Container(
                      height: Utilties.height(context)*.04),
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
                          // focusColor: Colors.red,
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
                    onTap:()async{
                        Utilties.signUpVar = true;
                        setState(() {
      
                        });
                        await Future.delayed(Duration(seconds: 1));
                        await Utilties.signUp(
      
                            emailController.text, passwordController.text, context);
                            Utilties.signUpVar = false;
      
                        setState(() {
      
                        });
      
                    },
      
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
                  ),
                  SizedBox(
                    height: Utilties.height(context)*.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.45),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                        ),),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
                        },
                        child: Text("Sign in",
                            style: TextStyle(
                              color: Color(0xff65D6FC),
                              fontSize: 14,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                            )),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
