import 'package:flutter/material.dart';
import 'package:new_quran_pc/Utilities.dart';
import 'package:new_quran_pc/screens/home_screen.dart';
import 'package:new_quran_pc/screens/tilaawat.dart';
import 'package:new_quran_pc/Utilities.dart';
import 'package:translator/translator.dart';

import 'drawer.dart';

class SearchScreen extends StatefulWidget {


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:MeraDrawer(
          signOutCallBack: () {
            setState(() {

            });
          },
        ),
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff112095),
                Color(0xff092052),

              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                        child: InkWell(
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),)),
                          child: Image.asset("img_9.png"),
                        ),
                        margin: EdgeInsets.only(left: 8),
                      );
                    },
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
                margin: EdgeInsets.only(top: 50),
                child: Container(
                  width: Utilties.width(context),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 110,
                        width: 300,
                        // color: Colors.green,
                        child: Image.asset(
                          "img_8.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: Utilties.width(context) * .82,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 2552, 255, .1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xff65D6FC).withOpacity(0.6),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: TextField(
                                  controller: Utilties.controllerOfSearchHere,
                                  onChanged: (value) {
                                    Utilties.newSurahFilteredList.clear();
                                    Utilties.newJuzFilteredList.clear();
                                    Utilties.newJuzFilteredArabicList.clear();
                                    Utilties.newSurahFilteredArabicList.clear();
                                    // (Utilties
                                    //                                         .controllerOfSearchHere
                                    //                                         .text==""?i<  114:i<Utilties
                                    //                                         .newSurahFilteredList.length):
                                    //                                     (Utilties
                                    //                                         .controllerOfSearchHere
                                    //                                         .text==""?i < 30:i<Utilties
                                    //                                         .newJuzFilteredList.length);
                                    for(int i = 0 ; surah?i<114:i<29;
                                    i++){

                                      surah?(
                                        Utilties.surahNames[i].toLowerCase().contains
                                          (Utilties.controllerOfSearchHere
                                            .text.toLowerCase())? {
                                                Utilties.newSurahFilteredList
                                                    .add(Utilties
                                            .surahNames[i]),
                                                Utilties
                                                    .newSurahFilteredArabicList
                                                    .add(Utilties
                                            .surahNamesArabic[i])

                                              }
                                            :null
                                        ):  Utilties.juz[i].toLowerCase().contains
                                          (Utilties.controllerOfSearchHere
                                            .text.toLowerCase())? {
                                                Utilties.newJuzFilteredList
                                                    .add(Utilties.juz[i]),

                                          Utilties.newJuzFilteredArabicList
                                                    .add(Utilties.juzArabic[i]),
                                              }
                                            :null;

                                  }
                                    //
                                    setState(() {

                                    });
                                    },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search Here",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, .3),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.search,
                                color: Color(0xff65D6FC),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: Utilties.width(context)*.82,
                margin: EdgeInsets.only(top: Utilties.height(context)*.06),
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          surah = true;
                          setState(() {

                          });
                        },
                        child: Column(
                          children: [
                            Container(child: Text("Surah",
                              style: TextStyle(
                                color: surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),),),
                            Container(
                              height: 3,

                              color: surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          surah = false;
                          setState(() {

                          });
                        },
                        child: Column(
                          children: [
                            Container(child: Text("Para",
                              style: TextStyle(
                                color: !surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),),),
                            Container(
                              height: 3,

                              color: !surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 500,
                    width: Utilties.width(context) * .82,
                    child: ListView.separated(
                      // physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,

                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            surah?onTapGetSurahTranslation(index)
                                :onTapGetJuzTranslation(index);
                            surah?onTapGetSurahTextFunction(context,index)
                               :onTapGetJuzTextFunction(context,index);




                          },
                          child: Container(
                            // color: Colors.purple,
                            width: Utilties.width(context)*.8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Image.asset("img_3.png" ,
                                            width:36,),
                                          Text((index+1).toString(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11
                                          ),)
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                  
                                      Expanded(
                                        child: Column(
                                          // mainAxisAlignment:
                                          // MainAxisAlignment.start,

                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          // crossAxisAlignment:ma
                                          // Surah?CrossAxisAlignment
                                          //     .start:CrossAxisAlignment.center,
                                          // mainAxisAlignment:
                                          // Surah?MainAxisAlignment
                                          //     .start:MainAxisAlignment.center,


                                          children: [
                                            FittedBox(
                                              child: Container(
                                                child: Text(surah?(Utilties
                                                    .controllerOfSearchHere
                                                    .text==""?Utilties
                                                    .surahNames[index]:Utilties
                                                    .newSurahFilteredList[index]):
                                                 (Utilties
                                                     .controllerOfSearchHere
                                                     .text==""? Utilties
                                                     .juz[index]:Utilties
                                                     .newJuzFilteredList[index]),
                                                  style: TextStyle(
                                                    color: Color(0xff65D6FC),
                                                    fontSize: 16,
                                                    fontFamily: "Poppins",
                                                    fontWeight: FontWeight.w400,
                                                  ),),
                                              ),
                                            ),
                                           surah? FittedBox(
                                              child: Container(
                                                // color: Colors.red,
                                                child:
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,


                                                  children: [
                                                    surah? Text(Utilties
                                                        .surahRevelationTypes[index]==RevelationType.Meccan?"MECCAN":
                                                      "MEDINAN",
                                                      style: TextStyle(
                                                        color: Colors.white.withOpacity(0.64),
                                                        fontSize: 12,
                                                        fontFamily: "Poppins",
                                                        fontWeight: FontWeight.w400,
                                                      ),):Container(),
                                                    SizedBox(width: 6,),
                                                    // Surah?CircleAvatar(
                                                    //   radius: 3,
                                                    //   backgroundColor: Color(0xffBBC4CE).withOpacity(0.35),
                                                    // ):Container(),
                                                    SizedBox(width: 2,),
                                                    surah? Text(surah?"${Utilties
                                                        .surahVerseCounts[index]}"" verses":"",
                                                        style: TextStyle(
                                                          color: Colors.white.withOpacity(0.64),
                                                          fontSize: 12,
                                                          fontFamily: "Poppins",
                                                          fontWeight: FontWeight.w400,
                                                        )):Container(),
                                                  ],
                                                ),
                                              ),
                                            ):Container()
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  child: Container(
                                  
                                    // color: Colors.red,
                                    margin: EdgeInsets.only(right: 10),
                                  
                                    child: Text(surah?Utilties
                                        .controllerOfSearchHere.text==""?
                                      (Utilties
                                        .surahNamesArabic[index]):(Utilties
                                        .newSurahFilteredArabicList[index]):
                                  
                                    Utilties
                                        .controllerOfSearchHere.text==""?
                                    (Utilties.juzArabic[index]):Utilties
                                        .newJuzFilteredArabicList[index],
                                        style:
                                    TextStyle(
                                      color: Color(0xff65D6FC),
                                      fontSize: 16,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w400,
                                    ) ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Color(0xffBBC4CE).withOpacity(.35),
                        );
                      },
                      itemCount: surah? (Utilties
                          .controllerOfSearchHere.text==""?Utilties
                          .surahNamesArabic
                          .length:Utilties.newSurahFilteredList.length):
                    (Utilties.controllerOfSearchHere.text==""? Utilties.juz
                        .length:Utilties.newJuzFilteredList.length),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}


void onTapGetSurahTextFunction(BuildContext context , int index) async{

  int ind = 0;
  Utilties.newSurahFilteredList.isNotEmpty?ind = Utilties.surahNames.indexOf(Utilties
      .newSurahFilteredList[index]):ind = index;
  Utilties.obj =await Utilties.getSurahText
    (ind+1);
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tilawat
    (0)));
}

void onTapGetJuzTextFunction(BuildContext context , int index) async{
  int ind = 0;
  Utilties.newJuzFilteredList.isNotEmpty?ind = Utilties.juz.indexOf(Utilties
      .newJuzFilteredList[index]):ind = index;
  Utilties.obj1 =await Utilties.getJuzText(ind+1);
  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tilawat
    (index,)));
}

void onTapGetSurahTranslation(int index) async {
  int ind = 0;
  Utilties.newSurahFilteredList.isNotEmpty?ind = Utilties.surahNames.indexOf(Utilties
      .newSurahFilteredList[index]):ind = index;
  Utilties.obj2 = await Utilties.getSurahTranslation(ind+1);
  //  for(int i = 0 ;i < Utilties.obj2!.data!.ayahs!.length ; i++){
  //
  //
  //   await (
  //       GoogleTranslator().translate( Utilties.obj2!.data!.ayahs![i].text!
  //           ,from: "en" , to: "ur")
  //           .then
  //         ((value){
  //         Utilties.surahUrduTranslation.add(value.text);
  //       })
  //   );
  //
  // }



}

void onTapGetJuzTranslation(int index) async {
  int ind = 0;
  Utilties.newJuzFilteredList.isNotEmpty?ind = Utilties.juz.indexOf(Utilties
      .newJuzFilteredList[index]):ind = index;
  Utilties.obj3 = await Utilties.getJuzTranslation(ind+1);



}