import 'package:flutter/cupertino.dart';

class Utilties{

  static double width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}
