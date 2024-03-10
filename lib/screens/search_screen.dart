import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class SearchScreen extends StatefulWidget {


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
bool Surah = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          onTap: () => Scaffold.of(context).openDrawer(),
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
                          Surah = true;
                          setState(() {

                          });
                        },
                        child: Column(
                          children: [
                            Container(child: Text("Surah",
                              style: TextStyle(
                                color: Surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),),),
                            Container(
                              height: 3,

                              color: Surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Surah = false;
                          setState(() {

                          });
                        },
                        child: Column(
                          children: [
                            Container(child: Text("Para",
                              style: TextStyle(
                                color: !Surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
                                fontSize: 16,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                              ),),),
                            Container(
                              height: 3,

                              color: !Surah?Color(0xff65D6FC):Colors.white.withOpacity(0.64),
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
                        return Align(
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Container(
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset("img_3.png" , width:30,),
                                      Text((index+1).toString(),
                                      style: TextStyle(
                                        color: Colors.white
                                      ),)
                                    ],
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Al-Fatiah",
                                        style: TextStyle(
                                          color: Color(0xff65D6FC),
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                        ),),
                                      Container(
                                        // color: Colors.green,
                                        child:
                                        Row(

                                          children: [
                                            Text("MECCAN",
                                              style: TextStyle(
                                                color: Colors.white.withOpacity(0.64),
                                                fontSize: 12,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.w400,
                                              ),),
                                            SizedBox(width: 6,),
                                            CircleAvatar(
                                              radius: 3,
                                              backgroundColor: Color(0xffBBC4CE).withOpacity(0.35),
                                            ),
                                            SizedBox(width: 6,),
                                            Text("7 verses",
                                                style: TextStyle(
                                                  color: Colors.white.withOpacity(0.64),
                                                  fontSize: 12,
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w400,
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Color(0xffBBC4CE).withOpacity(.35),
                        );
                      },
                      itemCount: 40,
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
