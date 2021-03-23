import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:jerry/VideoPlayerScreen.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xff13195b),

            bottom: TabBar(tabs: [
              Tab(
                text: "Dilkibaat",
              ),
              Tab(
                text: "Memories",
              ),
              Tab(text: "Tohfa"),
            ]),

            centerTitle: true,

            title: Text(
              "Jerry Ka Bday",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ), // Text Style, Text
          ),
          body: TabBarView(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Text(
                          "Jerrryy...kya likhe...u know everything..Jab first time tutorial me tmhare bagal me baithe the toh kabhi imagine nai kie the ki aage chal ke aisi dosti ho jaegi!Tareef krne layak toh kuch hai nai bas itna kahenge ki tmhara presence hi peace hai meri monk baba:* I m & will alwayssss be there for u & with you..chahe park ke chakkar katne ho ya doctor k...RR krna ho ya ghanto shopping...fruits mangwana ho ya amul se momos :PKabhi bhi low/lonely feel ho and hmse contact na ho paye (mushkihaiyestill) to memories wali tasveerein dekh lena aur hamari bakchodiyan yaad krk khush ho jana! Tum bas mujhpe kitkat ki barish krte rho hm kachoriyon ki karte rhnge XD Fir aur kisi ki zaroorat hi kahan hai :) !!Bas itna hi hai tmse kehna<3 Happiest birthday meri strongest,cutest Chutiya!!!! "
                              ,
                          style: TextStyle(
                            fontSize: 21.6,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.blueAccent,
                  child: ListView(
                    children: [
                      Image(image: AssetImage("images/10.jpeg")),
                      Image(image: AssetImage("images/2.jpeg")),
                      Image(image: AssetImage("images/3.jpeg")),
                      Image(image: AssetImage("images/6.jpeg")),
                      Image(image: AssetImage("images/7.jpeg")),
                      Image(image: AssetImage("images/8.jpeg")),
                      Image(image: AssetImage("images/9.jpeg")),
                      Image(image: AssetImage("images/1.jpeg")),
                      Image(image: AssetImage("images/5..jpeg")),
                      Image(image: AssetImage("images/4.jpeg")),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                    child:
                        //Text(
                          //"heyyy",
                          //style: TextStyle(
                            //fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          //),
                        //),
                        Scaffold(
                          floatingActionButton: FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoPlayerScreen(),
                                  ));
                            },
                            child: Icon(
                              FlutterIcons.play_circle_outline_mdi,
                              color: Colors.white,
                              size: 56,
                            ),
                            backgroundColor: Color(0xFF13195b),
                          ),
                        )
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
