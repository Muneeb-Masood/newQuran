import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_quran_pc/screens/home_screen.dart';
import 'package:new_quran_pc/screens/search_screen.dart';
import 'package:new_quran_pc/screens/sign_up.dart';
import 'package:new_quran_pc/screens/splash_screen.dart';
import 'package:new_quran_pc/screens/tilaawat.dart';
// import 'package:quran_app_ramadan/Utilities.dart';
// import 'package:quran_app_ramadan/screens/drawer.dart';
// import 'package:quran_app_ramadan/screens/search_screen.dart';
// import 'package:quran_app_ramadan/screens/sign_in.dart';
// import 'package:quran_app_ramadan/screens/sign_up.dart';
// import 'package:quran_app_ramadan/screens/splash_screen.dart';
// import 'package:quran_app_ramadan/screens/home_screen.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:quran_app_ramadan/screens/testing_api.dart';
// import 'package:quran_app_ramadan/screens/tilaawat.dart';
// import 'firebase_options.dart';
import 'Utilities.dart';
import 'firebase_options.dart';
import 'modules/get_surah.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    getSurahFuncInMyApp();
    super.initState();
  }

  getSurahFuncInMyApp() async{
    Utilties.obj = await  Utilties.getSurahText(2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Utilties.obj==null ? Center(
            child:
            CircularProgressIndicator(),
          ):  Container(
            color:Colors.green,
            height:400,
            child: ListView.builder(itemCount: Utilties.obj!.data!.ayahs!.length,itemBuilder: (context, index) {
              return Container(
                child: Text(Utilties.obj!.data!.ayahs![index].text.toString()),
              );
            },),
          ),
          ElevatedButton(onPressed: () async{
            Utilties.obj = await  Utilties.getSurahText(1);

          }, child: Text("Get Surah")),
        ],
      ),
    );
  }
}


void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
      MaterialApp(
          home: HomeScreen()

      )
  );

}