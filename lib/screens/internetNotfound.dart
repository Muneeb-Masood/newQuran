import 'package:flutter/material.dart';

import 'home_screen.dart';

class InternetNotFound extends StatefulWidget {
  const InternetNotFound({super.key});

  @override
  State<InternetNotFound> createState() => _InternetNotFoundState();
}

class _InternetNotFoundState extends State<InternetNotFound> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff112095), Color(0xff09245A)],
              ),
            ),
            child: Center(
              child: Text("Please connect to the internet",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins",
                      fontSize: 16
                  )) ,
            ),
          )
,
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) {
                    return
                      Container(

                        width: 20,
                        child: InkWell(onTap: () =>
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),))
                            , child:Icon(Icons.arrow_back_ios_new_rounded,
                              color:             Color(0xff65D6FC)
                              ,)),
                        margin: EdgeInsets.only(left: 13 , top: 5),
                      );
                  },
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
