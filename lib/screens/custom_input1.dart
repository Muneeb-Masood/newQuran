import 'package:flutter/material.dart';


import '../Utilities.dart';

Widget CutomInput(BuildContext context, String label, String placeHolder,
    String imagePath, TextEditingController controller) {
  return Container(
    margin: EdgeInsets.only(bottom: Utilties.height(context) * .04),
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xff65D6FC), width: 3)),
    height: 55,
    constraints: BoxConstraints(maxWidth: 500),
    width: Utilties.width(context) * .8,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: TextStyle(
                color: Color(0xffffffff).withOpacity(0.3),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 12),
          ),
        ),
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    height: 36,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: TextField(
                        controller: controller,
                        style: TextStyle(
                            color: Color(0xffffffff).withOpacity(0.95),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      top: 4, left: 8, right: 8, bottom: 0),
                  child: Image.asset("img_1.png", width: 30),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
