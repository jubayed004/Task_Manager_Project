import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskmanager/style/style.dart';

import 'loginscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Text('Mohammad\n Jubayed Islam',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),),
            ),
          )
        ],
      ) ,
    );
  }
}
