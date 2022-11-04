import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splashscreen/screen1.dart';

void main() {
  runApp(const SplashScreen());
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

// What is init state?
// in it means initilization.
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
     () => Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context)=> Screen1())),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Text("Logo", 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        )),
      ),
    );
  }
}


