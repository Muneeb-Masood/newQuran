import 'package:flutter/material.dart';
import 'package:new_quran_pc/Utilities.dart';
import 'package:social_share/social_share.dart';
import 'package:translator/translator.dart';

import 'drawer.dart';


class Tilawat extends StatefulWidget {
  int indexForJuzName = 0 ;
  Tilawat(int ind){
    indexForJuzName = ind;
  }

  @override
  State<Tilawat> createState() => _TilawatState();
}

class _TilawatState extends State<Tilawat> {
  @override
  Widget build(BuildContext context) {
    return
      Utilties.signInVar?Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff112095), Color(0xff09245A)],
            ),
          ),
          child: Center(
            child: CircularProgressIndicator(),)):Scaffold(
      drawer:MeraDrawer(
        signOutCallBack: () {
          setState(() {

          });
        },
      ),
      body:
          (Utilties.obj!=null && Utilties.obj2!=null)||(Utilties.obj1!=null &&
              Utilties.obj3!=null) || Utilties.obj4!=null?
      // Utilties.obj4!=null ?
          Utilties.signOutVar?Container(
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
                gradient: LinearGradient(colors: [
                  Color(0xff112095),
                  Color(0xff092052)
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                      builder: (context) {
                        return Container(
                          width: 20,
                          child: InkWell(onTap: () {
                            Scaffold.of(context).openDrawer();
                            if(Utilties.signOutVar){
                              setState(() {

                              });
                            }
                          },
                            child: Image.asset("img_9.png")),
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
                width: Utilties.width(context)*.9,
                height: Utilties.height(context)*.2,


                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                    gradient: LinearGradient(colors:
                    [Color(0xff65D6FC),
                      Color(0xff455EB5)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded
                      (child: Image.asset
                      ("img_8.png" , fit: BoxFit.cover,)),
                    Expanded(
                      child: Container(
                        width: 200,
                        margin: EdgeInsets.only(right: 10),
                        // color: Colors.red,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text(Utilties.ayatAlKursiText?"Ayat Al Kursi":
                              (surah?(Utilties
                                  .controllerOfSearchHere
                                  .text==""?
                              (Utilties.obj!.data!.name!): (Utilties
                                  .newSurahFilteredList[2]))
                                      :Utilties
                                  .juz[widget.indexForJuzName!]),
                                  style:
                              TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              )),

                              (surah && !Utilties.ayatAlKursiText)? Text(Utilties.obj!.data!
                                  .englishNameTranslation!,style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              )):Container(),

                              FittedBox(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      (surah && !Utilties.ayatAlKursiText)?Text(Utilties.obj!.data!
                                          .revelationType!,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),):Container(),
                                      SizedBox(width: 2,),

                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Color(0xffBBC4CE).withOpacity(0.35),
                                      ),
                                      SizedBox(width: 2,),
                                      (surah && !Utilties.ayatAlKursiText)?Text(Utilties.obj!.data!.ayahs
                                          !.length.toString()+" VERSES",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                          )):Container(),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: Utilties.height(context)*.1,),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff0A2060),
                          borderRadius: BorderRadius.circular(8),



                        ),
                        width: Utilties.width(context)*.8,
                        height:44,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xff65D6FC),
                                  radius: 14,
                                  child: Text((index+1).toString(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 14
                                    ),),
                                ),
                              ),
                     !Utilties.ayatAlKursiText?(Utilties.obj!=null ?
                      (Utilties.obj!.data!
                          .ayahs![index].sajda!.id!=null)?Container(
                          child: Text
                              ("Perform "
                                "Sajdah"),
                          color:Colors.green,
                        ) : Container() :(Utilties.obj1!.data!
                          .ayahs![index].sajda!.id!=null)?Container(
                        child: Text
                          ("Perform "
                            "Sajdah"),
                        color:Colors.green,
                      ) : Container()):Container(),

                              // !Utilties.ayatAlKursiText?(Utilties.obj!=null ?
                              // (Utilties.obj!.data!
                              //     .ayahs![index].ruku==Utilties.currentRuku+1)
                              //     ?Container(
                              //   child: Text
                              //     ("Ruku"),
                              //   color:Colors.green,
                              // ) : Container() :(Utilties.obj1!.data!
                              //     .ayahs![index].ruku==Utilties
                              //     .currentRuku+1 && Utilties.currentRuku!=0)
                              //     ?Container(
                              //
                              //
                              //   child: Text
                              //     ("Ruku"),
                              //   color:Colors.green,
                              // ) : Container()):Container(),
                              InkWell(onTap:(){
                                String surhOrJuz = surah?"🔍 Surah: "
                                    "${Utilties.obj!.data!.name}":"📖 *Juz "
                                    "Number:* ${Utilties.juz[indexForJuzName]}";
                                Share.share(
                                    '''
بِسْمِ اللَّهِ الرَّحْمَـٰنِ الرَّحِيمِ

📖 Ayah Reflection:
${surhOrJuz}
📖 Ayah Number: ${index+1}

In this verse, Allah says: ${surah?Utilties.obj!.data!.ayahs![index].text:Utilties
                                        .obj1!.data!.ayahs![index].text}

📜 Translation:  ${surah?Utilties.obj2!.data!.ayahs![index].text:Utilties
                                        .obj3!.data!.ayahs![index].text}

Let's contemplate the wisdom and guidance encapsulated in these divine words. May it enlighten our hearts and souls.

📲 Download the Quran - Guide for All app to explore more verses and their meanings: [Insert Download Link Here]
'''
                                );
                              },
                                child: Container(
                                  color:Colors.red,
                                    margin: EdgeInsets.only(right: 15)
                                    ,child: Image.asset("img_4.png" , width: 30,)),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 130,
                        color: Colors.transparent,
                        width: Utilties.width(context)*.8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Expanded(child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(Utilties.ayatAlKursiText?
                                Utilties.obj4!.data!.text!:(surah?Utilties.obj!
                                    .data!
                                    .ayahs![index]
                                    .text!:Utilties.obj1!.data!.ayahs![index]
                      .text!),
                                    textDirection:TextDirection.rtl,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 18
                                    ),textAlign: TextAlign.right),
                              ),
                            ),
                            ),

                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                    Utilties.ayatAlKursiText?"GOD - there is "
                                        "no deity save Him, the Ever-Living, "
                                        "the Self-Subsistent Fount of All Being. "
                                        "Neither slumber overtakes Him, nor sleep. "
                                        "His is all that is in the heavens and all that is on earth."
                                        " Who is there that could intercede with Him, unless it be by His leave? "
                                        "He knows all that lies open before men and all that is hidden from them,"
                                        " whereas they cannot attain to aught of His knowledge save that which "
                                        "He wills [them to attain]. His eternal power overspreads the heavens and "
                                        "the earth, and their upholding wearies Him not. And he alone is truly "
                                        "exalted, tremendous.":(surah?(Utilties
                                        .obj2!.data!
                                    .ayahs![index].text?? "")
                                    :(Utilties.obj3!.data!
                                    .ayahs![index]
                                    .text?? ""))
                                    ,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins",
                                        fontSize: 16
                                    )),
                              ),
                            ),
                            Divider(
                              color: Color(0xffBBC4CE).withOpacity(0.35),
                              thickness: 3.0,
                              height: 20.0,
                            ),

                          ],
                        ),
                      )
                    ],
                  );
                },itemCount: Utilties.ayatAlKursiText?1:(surah?Utilties.obj!
                    .data!.ayahs!.length:
                  Utilties.obj1!.data!.ayahs!.length),),
              )

            ],
          ),

        ],
      ) :Center(child: CircularProgressIndicator(),) ,
    );
  }
}
