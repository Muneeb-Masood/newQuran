import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class Tilawat extends StatelessWidget {
  const Tilawat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
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
                              Text("سورة الفاتحة",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              )),
                          
                              Text("The Opening",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              )),
                          
                              FittedBox(
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                
                                    children: [
                                      Text("MECCAN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      SizedBox(width: 2,),
                                
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: Color(0xffBBC4CE).withOpacity(0.35),
                                      ),
                                      SizedBox(width: 2,),
                                      Text("7 VERSES",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w400,
                                          )),
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
              )
            ],
          )
        ],
      ) ,
    );
  }
}
