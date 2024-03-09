import 'package:flutter/material.dart';
import 'package:quran_app_ramadan/Utilities.dart';

class SearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Positioned(
            top: 50,
            child: Container(
              width: Utilties.width(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 110,
                    width: 300,
                    color: Colors.green,
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
          Positioned(
            top: 230,
            child: Center(
              child: Container(
                height: 500,
                width: Utilties.width(context) * .82,
                child: SingleChildScrollView(
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                  
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Image.asset("img_3.png"),
                          Column(
                            children: [
                              Text("Al-Fatiah"),
                              Row(
                                children: [
                                  Text("data"),
                                  Text(index.toString()),
                                ],
                              )
                            ],
                          )
                        ],
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
            ),
          )
        ],
      ),
    );
  }
}
