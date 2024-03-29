import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget meraContainer(String urduTranslatrion, String englishTranslation, BuildContext context) {
  return Container(
    // Set fixed width
    // margin: EdgeInsets.only(left: Utilties.width(context) * .05, right: Utilties.width(context) * .05),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xff65D6FC),
          Color(0xff455EB5),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Stack(
      children: [
        Positioned(
          bottom: 10,left: 2,
          child: CircleAvatar(
                radius: 13,
            backgroundColor:Color(0xff0C2165) ,
            child: Icon(Icons.navigate_next ,  color:Color.fromRGBO(255, 255, 255, 0.7),),


          ),
        ),
        Container(
          width: Utilties.width(context),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: Utilties.height(context)*.03),
                child: FittedBox(
                  child: Text(urduTranslatrion , style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
              FittedBox(
                child: Text(englishTranslation,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w100,
                  ),),
              ),
            ],
          ),
        ),
        Opacity(
          opacity: 0.1,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: Image.asset(
                "img_8.png",
                fit: BoxFit.cover,
              ),
              width: 300,
              height: 100,
            ),
          ),
        ),
      ],
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: Utilties.width(context)*.7,

        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff112095), Color(0xff092052)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,)
          ),
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(onTap: () => Navigator.pop(context),child: Container(
                  // color: Colors.green,
                  width: 30,
                  child: Image.asset("img_9.png" ),
                  margin: EdgeInsets.only(left: 18,top: 20),
                ),),
                Container(
                    margin: EdgeInsets.only(top: 55),
                    // color: Colors.green,
                    width: 240,
                    height: 100,
                    child: Image.asset("img_8.png" , fit: BoxFit.cover,)),

                Container(
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Text("Quran Kareem",style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1), fontFamily: "Raleway",
                      fontSize: 20, fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Text("With Multiple Translation",style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                      fontSize: 13, fontWeight: FontWeight.w100
                  ),),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.person_2_outlined , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Sign In/Profile" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.star_rate_outlined , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Rate Us" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.phone_android , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Contact Us" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.help , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("About Us" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.settings , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Settings" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
                Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(left: 40 , top: Utilties.height(context)*.04),
                  child: Row(

                    children: [
                      Icon(Icons.logout , color: Colors.white,),
                      SizedBox(width: 20,),
                      Expanded(child: Text("Sign out" , style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .7), fontFamily: "Raleway",
                          fontSize: 16
                      )))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff112095), Color(0xff092052)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Builder(
                builder: (context) {
                  return Container(
                    width: 20,
                    child: InkWell(onTap: () => Scaffold.of(context).openDrawer(),child: Image.asset("img_9.png")),
                    margin: EdgeInsets.only(left: 8),
                  );
                }
              ),
              Container(
                width: 22,
                child: CircleAvatar(
                  // backgroundColor: Colors.green,
                  child: Icon(Icons.verified_user),
                ),
                margin: EdgeInsets.only(right: 8),
              )
            ],
          ),
          Container(
            // color: Colors.red,
            child: Column(

              children: [
                Container(
                  // color: Colors.green,
                  margin: EdgeInsets.only(top: Utilties.height(context) * .1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 100,
                        child: Image.asset("img_8.png", fit: BoxFit.cover),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              AspectRatio(
                                child: Image.asset(
                                  "img.png",
                                  width: 100,
                                ),
                                aspectRatio: 10 / 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "img_1.png",
                                    width: 20,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Text(
                                      "Last Read",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Last Read",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text(
                                            "Last Read",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Image.asset(
                                      "img_2.png",
                                      width: 20,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        margin: EdgeInsets.only(
                          left: Utilties.width(context) * .08,
                          right: Utilties.width(context) * .08,
                        ),
                        width: Utilties.width(context) * .9,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff65D6FC),
                              Color(0xff455EB5),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(

                  child: Container(
                    margin: EdgeInsets.only(top: Utilties.height(context)*.07),
                   alignment: Alignment.center,
                    // color: Colors.blue,
                    width: Utilties.width(context) * .8,
                    height: Utilties.height(context) * .5,
                    child: GridView(


                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                        crossAxisCount: 2,

                        mainAxisSpacing: 30,
                        crossAxisSpacing: 20,
                        childAspectRatio: 1.4,

                        mainAxisExtent: Utilties.height(context)*.2


                      ),
                      children: [
                        meraContainer("سورة", "Surah", context),
                        meraContainer("پارہ", "Para", context),
                        meraContainer("سورة يس", "Surah Yasin", context),
                        meraContainer("آيت الكرسي", "Ait Al-kursi", context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
