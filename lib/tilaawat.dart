// import 'package:flutter/material.dart';
// import 'package:new_quran_pc/Utilities.dart';
//
//
// class Tilawat extends StatelessWidget {
//   const Tilawat({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Color(0xff112095),
//                 Color(0xff092052)
//               ],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight)
//             ),
//           ),
//           Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Builder(
//                       builder: (context) {
//                         return Container(
//                           width: 20,
//                           child: InkWell(onTap: () => Scaffold.of(context).openDrawer(),child: Image.asset("img_13.png")),
//                           margin: EdgeInsets.only(left: 8),
//                         );
//                       }
//                   ),
//                   Container(
//                     width: 22,
//                     child: CircleAvatar(
//                       // backgroundColor: Colors.green,
//                       child: Icon(Icons.verified_user),
//                     ),
//                     margin: EdgeInsets.only(right: 8),
//                   )
//                 ],
//               ),
//               Container(
//                 width: Utilties.width(context)*.9,
//                 height: Utilties.height(context)*.2,
//
//
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//
//                   gradient: LinearGradient(colors:
//                   [Color(0xff65D6FC),
//                   Color(0xff455EB5)],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight)
//                 ),
//
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded
//                       (child: Image.asset
//                       ("img_8.png" , fit: BoxFit.cover,)),
//                     Expanded(
//                       child: Container(
//                         width: 200,
//                         margin: EdgeInsets.only(right: 10),
//                         // color: Colors.red,
//                         child: SingleChildScrollView(
//                           child: Column(
//                             mainAxisAlignment:MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("سورة الفاتحة",style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.w500,
//                               )),
//
//                               Text("The Opening",style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 16,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.w500,
//                               )),
//
//                               FittedBox(
//                                 child: Container(
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//
//                                     children: [
//                                       Text("MECCAN",
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 14,
//                                           fontFamily: "Poppins",
//                                           fontWeight: FontWeight.w400,
//                                         ),),
//                                       SizedBox(width: 2,),
//
//                                       CircleAvatar(
//                                         radius: 3,
//                                         backgroundColor: Color(0xffBBC4CE).withOpacity(0.35),
//                                       ),
//                                       SizedBox(width: 2,),
//                                       Text("7 VERSES",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 14,
//                                             fontFamily: "Poppins",
//                                             fontWeight: FontWeight.w400,
//                                           )),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(height: Utilties.height(context)*.1,),
//               Expanded(
//                 child: ListView.builder(itemBuilder: (context, index) {
//                   return Column(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Color(0xff0A2060),
//                           borderRadius: BorderRadius.circular(8),
//
//
//
//                         ),
//                         width: Utilties.width(context)*.8,
//                         height:44,
//                         child: Center(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 margin: EdgeInsets.only(left: 15),
//                                 child: CircleAvatar(
//                                   backgroundColor: Color(0xff65D6FC),
//                                   radius: 14,
//                                   child: Text((index+1).toString(),
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: "Poppins",
//                                         fontSize: 14
//                                     ),),
//                                 ),
//                               ),
//                               Container(
//                                   margin: EdgeInsets.only(right: 15)
//                                   ,child: Image.asset("img_14.png" , width: 30,))
//                             ],
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: 130,
//                         color: Colors.transparent,
//                         width: Utilties.width(context)*.8,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//
//                           children: [
//                             Expanded(child: SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Align(
//                                 alignment: Alignment.centerRight,
//                                 child: Text( "صِرَ ٰ⁠طَ ٱلَّذِینَ أَنۡعَمۡتَ عَلَیۡهِمۡ غَیۡرِ ٱلۡمَغۡضُوبِ عَلَیۡهِمۡ وَلَا ٱلضَّاۤلِّینَ",
//                                     textDirection:TextDirection.rtl,
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: "Poppins",
//                                         fontSize: 18
//                                     ),textAlign: TextAlign.right),
//                               ),
//                             ),
//                             ),
//
//                             Expanded(
//                               child: SingleChildScrollView(
//                                 scrollDirection: Axis.horizontal,
//                                 child: Text("[All] praise is [due] to Allah, Lord of the "
//                                     "worlds -",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: "Poppins",
//                                         fontSize: 16
//                                     )),
//                               ),
//                             ),
//                             Divider(
//                               color: Color(0xffBBC4CE).withOpacity(0.35),
//                               thickness: 3.0,
//                               height: 20.0,
//                             ),
//
//                           ],
//                         ),
//                       )
//                     ],
//                   );
//                 },itemCount: 10,),
//               )
//
//             ],
//           ),
//
//         ],
//       ) ,
//     );
//   }
// }
