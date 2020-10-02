import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      home: DefaultTabController(

        length: 3,

        child: Scaffold(
          backgroundColor:

          Colors.white,

          appBar: AppBar(
            backgroundColor: Color(0xff13195b),

            bottom: TabBar(tabs: [

              Tab(text: "Dilkibaat",),

              Tab(text: "Memories",),
              Tab(text:"Tohfa"),
            ]),

            centerTitle: true,

            title: Text("Jerry Ka Bday", style: TextStyle(

              fontWeight: FontWeight.bold,

              color: Colors.white70,
            ),), // Text Style, Text
          ),
          body: TabBarView(
            children: [
              Padding(padding: EdgeInsets.only(
                  left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("heyyy",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(
                  left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: ListView(
                   children: [
                     Image(image:AssetImage("images/10.jpeg")),
                     Image(image:AssetImage("images/2.jpeg")),
                     Image(image:AssetImage("images/3.jpeg")),
                     Image(image:AssetImage("images/6.jpeg")),
                     Image(image:AssetImage("images/7.jpeg")),
                     Image(image:AssetImage("images/8.jpeg")),
                     Image(image:AssetImage("images/9.jpeg")),
                     Image(image:AssetImage("images/1.jpeg")),
                     Image(image:AssetImage("images/5..jpeg")),
                     Image(image:AssetImage("images/4.jpeg")),
                   ],

                    ),
                  ),
                ),
              Padding(padding: EdgeInsets.only(
                  left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: ListView(
                    children: [
                      Image(image:AssetImage("images/jerry1."))
                    ],

                  ),
                ),
              ),


            ],
          ),
        ),),

    );
  }
}