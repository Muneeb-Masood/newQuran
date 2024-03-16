import 'package:flutter/material.dart';
import 'package:new_quran_pc/screens/sign_up.dart';

import '../Utilities.dart';
import 'custom_input1.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool obsText = false;
    return SafeArea(
      child: Scaffold(
        body:
        Utilties.signInVar?
        Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff112095), Color(0xff09245A)],
              ),
            ),
            child: Center(
            child: CircularProgressIndicator(),)):
        Stack(
          children: [
            Positioned(child: Image.asset("assets/images/img_14.png"),
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
      
            SingleChildScrollView(
              child: Column(
      
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: FittedBox(
                      child: Container(
                        margin: EdgeInsets.only(top: Utilties.height(context)*.1),
                        // color: Colors.green,
                        alignment: Alignment.center,
                        constraints: BoxConstraints(
                          maxWidth: 500
                        ),
                        width: Utilties.width(context) * .8,
                        height: Utilties.height(context) * .1,
                        child: SingleChildScrollView(
                          child:
                          Text(
                            "Sign In",
                          
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
                  ),
                  Container(
                    width: Utilties.width(context) * .33,
                    child: Divider(
                      color: Color(0xff65D6FC),
                      thickness: 4,
                      height: 4,
                    ),
                  ),
      
                  SizedBox(height: 20,),
                  CutomInput(context, "Email", "muneebned844@gmail.com", "img_5.png" , emailController),
                  Container(
                      height: Utilties.height(context)*.04),
      
                  CutomInput(context, "Password", "****", "img_6.png" , passwordController),
                  // CutomInput(context, "Confirm Password", "****", "img_5" , confirmPasswordController),
                  // Container(
                  //   // color: Colors.green,
                  //   width: Utilties.width(context)*.8,
                  //   constraints: BoxConstraints(
                  //       maxWidth: 500
                  //   ),
                  //   margin: EdgeInsets.only(top: Utilties.height(context)*0.04),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     children: [
                  //       Switch(value: Utilties.selected,
                  //         activeColor: Color(0xff65D6FC),
                  //         focusColor: Colors.red,
                  //         onChanged: (value) {
                  //           Utilties.selected = value;
                  //
                  //           setState(() {
                  //
                  //           });
                  //         },),
                  //       SizedBox(width: Utilties.width(context)*.01,),
                  //       Expanded(
                  //         child: Text("Save the info?" ,style: TextStyle(
                  //             fontSize: 16,
                  //             color: Colors.white.withOpacity(0.8)
                  //         ),),
                  //       )
                  //     ],
                  //   ),
                  // ),
                  Container(
                      alignment: Alignment.centerRight,
                      width: Utilties.width(context)*.8,
                      // color: Colors.green,
                      constraints: BoxConstraints(
                          maxWidth:500
                      ),
                      child: Text("Forgot Password?",
                          style: TextStyle(
                            color: Color(0xff65D6FC),
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ))),
                  InkWell(
                    onTap:()async{
                      Utilties.signInVar = true;
                      setState(() {

                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Utilties.SignIn(

                          emailController.text, passwordController.text, context);
                      Utilties.signInVar = false;

                      setState(() {

                      });

                    },
      
                    child: Container(
                      constraints: BoxConstraints(
                          maxWidth: 500
                      ),
                      alignment: Alignment.center,
                      child: Text("SIGN IN",
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
                  ),
                  SizedBox(
                    height: Utilties.height(context)*.07,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have any account? ",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.45),
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                        ),),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUp(),));
                        },
                        child: Text("Register",
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
            ),
      
          ],
        ),
      ),
    );
  }
}

//