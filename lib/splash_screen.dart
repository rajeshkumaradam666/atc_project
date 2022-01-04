// ignore_for_file: unnecessary_new

import 'dart:async';

import 'package:atc_project/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _timer = new Timer(const Duration(seconds: 3), () {});
  @override
  void initState() {
    _timer = new Timer.periodic(const Duration(seconds: 5), (void call) {
      _timer.cancel();
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 110.0,
                      child: Image(
                        image: AssetImage("assets/images/atc.jpg"),
                        width: 140.0,
                        height: 130.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SpinKitRotatingCircle(
                      color: Colors.orange,
                      size: 35.0,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
