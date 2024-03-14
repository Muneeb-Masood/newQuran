import 'package:flutter/material.dart';
import 'package:new_quran_pc/Utilities.dart';
import 'package:new_quran_pc/screens/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class MeraDrawer extends StatelessWidget {
  const MeraDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: Utilties.width(context) * .7,

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff112095), Color(0xff092052)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,)
          ),
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () => Navigator.pop(context), child: Container(
                  // color: Colors.green,
                  width: 30,
                  child: Image.asset("img_9.png"),
                  margin: EdgeInsets.only(left: 18, top: 20),
                ),),
                Container(
                    margin: EdgeInsets.only(top: 55),
                    // color: Colors.green,
                    width: 240,
                    height: 100,
                    child: Image.asset("img_8.png", fit: BoxFit.cover,)),

                Container(
                  margin: EdgeInsets.only(
                      left: 40, top: Utilties.height(context) * .04),
                  child: Text("Quran Kareem", style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "Raleway",
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text("With Multiple Translation", style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, .7),
                      fontFamily: "Raleway",
                      fontSize: 13,
                      fontWeight: FontWeight.w100
                  ),),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                      left: 40, top: Utilties.height(context) * .04),
                  child: Row(

                    children: [
                      Icon(Icons.person_2_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Sign In/Profile", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7),
                          fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                      left: 40, top: Utilties.height(context) * .04),
                  child: Row(

                    children: [
                      Icon(Icons.star_rate_outlined, color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Rate Us", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7),
                          fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async{
                    String url = "https://wa.me/+923320820125";
                    Uri parsedUrl = Uri.parse(url);
                  try{

                if((await launchUrl(parsedUrl))) {

                }
                else{
                  throw "error in launching url";
                }

                  }

                  catch(e){
                    print(e);
                  }


                  },
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(
                        left: 40, top: Utilties.height(context) * .04),
                    child: Row(

                      children: [
                        Icon(Icons.phone_android, color: Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Contact Us", style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, .7),
                            fontFamily: "Raleway",
                            fontSize: 16
                        )))
                      ],
                    ),
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                      left: 40, top: Utilties.height(context) * .04),
                  child: Row(

                    children: [
                      Icon(Icons.help, color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("About Us", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7),
                          fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(
                      left: 40, top: Utilties.height(context) * .04),
                  child: Row(

                    children: [
                      Icon(Icons.settings, color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Settings", style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7),
                          fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async{
                    SharedPreferences prefs = await SharedPreferences
                        .getInstance();
                    prefs.clear();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                  },
                  child: Container(
                    // color: Colors.red,
                    margin: EdgeInsets.only(
                        left: 40, top: Utilties.height(context) * .04),
                    child: Row(

                      children: [
                        Icon(Icons.logout, color: Colors.white,),
                        SizedBox(width: 20,),
                        Expanded(child: Text("Sign out", style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, .7),
                            fontFamily: "Raleway",
                            fontSize: 16
                        )))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )

    );
  }}
