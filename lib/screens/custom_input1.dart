import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CutomInput(BuildContext context, String label, String placeHolder, String imagePath, TextEditingController controller) {
  return Container(
    constraints: BoxConstraints(maxWidth: 500),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Color(0xff65D6FC)),
    ),
    child: Stack(
      children: [
        Container(child: Text(label)),
        Positioned(
          top: 12,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 30, // Adjust the height here
                  child: Container(
                    child: SingleChildScrollView(
                      child: Container(
                        alignment: Alignment.topCenter,
                        color: Colors.red,
                        child: TextField(
                          maxLines: 1,
                          controller: controller,
                          textAlign: TextAlign.start,
                          autocorrect: true,
                          textAlignVertical: TextAlignVertical.top,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, .95),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
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
