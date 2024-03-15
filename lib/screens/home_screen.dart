import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:new_quran_pc/Utilities.dart';
import 'package:new_quran_pc/modules/get_ayat_al_kursi.dart';
import 'package:new_quran_pc/screens/drawer.dart';
import 'package:new_quran_pc/screens/search_screen.dart';
import 'package:new_quran_pc/screens/tilaawat.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../tilaawat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget meraContainer(String urduTranslatrion, String englishTranslation,
    BuildContext context , onPressed()) {
  return InkWell(
    onTap: onPressed,
    child: Container(
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
    ),
  );
}
Future<SharedPreferences> ? prefsInHomeScreen;
class _HomeScreenState extends State<HomeScreen> {
  void getLastReadData() {

    prefsInHomeScreen!.then((value){

      _HomeScreenState.getDataValue =  value.getString("lastReading") ;
      _HomeScreenState.initialize = true;
      setState(() {

      });
    });



  }
  @override
  static String ? getDataValue ;
  static bool  initialize = false ;
  void initState() {
    print("Ok ha state s call hoa ha");
    prefsInHomeScreen = Utilties
        .createSharedPrefsInstance();

    getLastReadData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      initialize?Scaffold(
        drawer:MeraDrawer(
          signOutCallBack: () {
            setState(() {

            });
          },
        ),
      body:
      Utilties.signInVar?Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff112095), Color(0xff09245A)],
            ),
          ),
          child: Center(
            child: CircularProgressIndicator(),)):Stack(
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
                child: const CircleAvatar(
                  // backgroundColor: Colors.green,
                  child: Icon(Icons.verified_user),
                ),
                margin: const EdgeInsets.only(right: 8),
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
                                      "",
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
                                    Container(
                                      // color: Colors.red,
                                      margin: EdgeInsets.only(left: 8),
                                      child: Row(
                                        children: [
                                          Text(

                                                "Last read : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Text(
                                            getDataValue??" - "
                                                ,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
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
                        meraContainer("سورة", "Surah", context ,
    ()=>onPressedSurahFunction(context)),
                        meraContainer("پارہ", "Para", context ,
                                ()=>onPressedGetPara(context)),
                        meraContainer("سورة يس", "Surah Yasin", context ,
                                ()=>onPressedSurahYaseen(context)),
                        meraContainer("آيت الكرسي", "Ait Al-kursi", context ,
                                ()=>onPressedAyatAlKursi(context)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ):Center(child: CircularProgressIndicator(),);
  }

}


void  onPressedSurahFatiha( BuildContext context) async{
  // Utilties.yaseen = false;
  Utilties.obj = await Utilties.getSurahText(1);
  Utilties.obj2 = await Utilties.getSurahTranslation(1);

  Navigator.push(context, MaterialPageRoute(builder: (context) => Tilawat(2)));
}
void  onPressedSurahYaseen( BuildContext context) async{
  // Utilties.yaseen = false;
  SharedPreferences prefs = await Utilties.createSharedPrefsInstance();
  prefs.setString("lastReading", "Surah Yaseen" );
  prefs.setInt("juzNumber", 22);
  Utilties.obj = await Utilties.getSurahText(36);
  Utilties.obj2 = await Utilties.getSurahTranslation(36);
  Navigator.push(context, MaterialPageRoute(builder: (context) => Tilawat(2)));
}

//
void  onPressedAyatAlKursi( BuildContext context) async{
  // Utilties.ayatAlKursiText = true;
  // Utilties.obj1 = await Utilties.getJuzText(3);
  // Utilties.obj3 = await Utilties.getJuzTranslation(3);

  SharedPreferences prefs = await Utilties.createSharedPrefsInstance();
  prefs.setString("lastReading", "AyatAlKursi" );
  prefs.setInt("juzNumber", 3);
  Utilties.ayatAlKursiText = true;
  Utilties.obj4 = await Utilties.getAyatAlKursiText();
  Navigator.push(context, MaterialPageRoute(builder: (context) => Tilawat(2)));
  print(Utilties.obj4!.data!.text!);
}

void  onPressedSurahFunction( BuildContext context) async{
  surah = true;

  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
}

void  onPressedGetPara( BuildContext context) async{
  surah = false;

  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
}

