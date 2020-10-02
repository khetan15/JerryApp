import 'dart:async';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:jerry/NextScreen.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
//import 'package:flutter_app/NextScreen.dart';

class StartingScreen extends StatefulWidget {
  @override
  _StartingScreenState createState() => _StartingScreenState();
}
class _StartingScreenState extends State<StartingScreen> {
  ConfettiController _controllerCenterRight=new ConfettiController();
  ConfettiController _controllerCenterLeft;
  Timer _timer;
  int _start = 5;

  @override
  Future<void> iniState() {
    _controllerCenterLeft =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenterRight =
        ConfettiController(duration: const Duration(seconds: 10));
    super.initState();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 3);

    _timer = new Timer.periodic(
        oneSec,
        (Timer timer) => setState(() {
              if (_start < 1) {
                _controllerCenterRight.play();
                _controllerCenterLeft.play();
                timer.cancel();
              }
              else {
                _start = _start-1;
              }
            }));
  }
  @override
  Future<void> dispose() {
    _timer.cancel();
    _controllerCenterRight.dispose();
    _controllerCenterLeft.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    startTimer();
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.pinkAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextScreen(),
              ));
        },
        child: Icon(
          FlutterIcons.play_circle_outline_mdi,
          color: Colors.white,
          size: 55,
        ),
        backgroundColor: Color(0xFF13195b),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/jerry1.jpg"),
                        fit: BoxFit.fill)),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "$_start",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 50),
              ),
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ConfettiWidget(
                  confettiController: _controllerCenterRight,
                  blastDirection: pi,
                  particleDrag: 0.05,
                  emissionFrequency: 0.05,
                  numberOfParticles: 20,
                  gravity: 0.05,
                  shouldLoop: false,
                  colors: const [Colors.green, Colors.blue, Colors.pink],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ConfettiWidget(
                  confettiController: _controllerCenterRight,
                  blastDirection: 0,
                  emissionFrequency: 0.5,
                  minimumSize: const Size(10, 10),
                  maximumSize: const Size(50, 50),
                  numberOfParticles: 1,
                  gravity: 0.08,
                ),
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 5,left: 20),
                  child: Text("Happieeee",style: TextStyle(
                    fontWeight: FontWeight.w900,color: Color(0xff13195b),
                    fontSize: 80
                  )),
                  ),
                  SizedBox(height: 40,),
                  Padding(padding: EdgeInsets.only(left: 50),
                    child: Text("Bithdayyyy",style: TextStyle(
                        fontWeight: FontWeight.w900,color: Color(0xff13195b),
                        fontSize: 70
                    )),
                  ),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 70),
                    child: Text("Jerry",style: TextStyle(
                        fontWeight: FontWeight.w900,color: Color(0xff13195b),
                        fontSize: 80
                    )),
                  ),

                ],
              )
            ],
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}
