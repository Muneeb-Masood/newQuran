import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TestingApi extends StatefulWidget {
  const TestingApi({super.key});

  @override
  State<TestingApi> createState() => _TestingApiState();
}

class _TestingApiState extends State<TestingApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ElevatedButton(
        onPressed: () async{
          var url = Uri.http("api.alquran.cloud", "/v1/quran/quran-uthmani");
          var response = await http.get(url);

          for(int i = 0 ; i< jsonDecode(response.body)["data"]["surahs"][0].length;i++){
            print(jsonDecode(response.body)["data"]["surahs"][i]["ayahs"]["text"]);
          }
        },
        child: Text("Read Quran"),
      ),
    );
  }
}
