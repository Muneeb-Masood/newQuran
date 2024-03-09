import 'package:flutter/material.dart';

import '../Utilities.dart';

Widget CutomInput(BuildContext context , String label , String placeHolder , String imagePath , TextEditingController controller){
  return Container(

margin: EdgeInsets.only(
  top: 13,left: 20,right: 20
),
width: 500,

    decoration: BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.1),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(
        color: Color(0xff65D6FC ),

      )


    ),
    // height: Utilties.height(context)*.15,
    // width: Utilties
    // .width(context)*.85,
    // height: 200,
    child: Padding(
      padding: const EdgeInsets.only(left: 8 ,top: 5,bottom: 5),
      child: Stack(

        children: [Text(label ,style:
        TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.3),
            fontSize: 12
        ),),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 17,
                    width: Utilties.width(context)*.7,

                    child: TextField(
                      controller: controller,
                      maxLines: 1,

                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .95),
                          fontSize: 12
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: placeHolder,
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, .95),
                          fontSize: 14
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/$imagePath.png",
              width: 20,),
            )
          ],
        )],
      ),
    ),
  );
}