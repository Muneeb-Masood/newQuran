
import 'package:flutter/material.dart';

class Concept extends StatelessWidget {
  const Concept({super.key});
  // child: Center(
  //
  //           child: CircleAvatar(
  //             radius: 10,
  //             child: Text("1"),
  //             backgroundColor: Colors.green,
  //           ),
  //         ),
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(
        color:Colors.red,
        width: 200,
        // height: 200,
        child: Row(
          children:[
            Text("Muneeb Masood")
          ]
        ),


      )
    );
  }
}
