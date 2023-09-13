import 'package:flutter/material.dart';
import 'package:taskmanager/screen/onboarding/emailverificationscreen.dart';
import 'package:taskmanager/screen/onboarding/pinverificationscreen.dart';
import 'package:taskmanager/screen/onboarding/registrationscreen.dart';
import 'package:taskmanager/screen/onboarding/setpasswordscreen.dart';

import 'screen/onboarding/loginscreen.dart';
import 'screen/onboarding/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: '/',
      routes: {

        '/':(context)=>SplashScreen(),
        '/login':(context)=>LoginScreen(),
        '/registration':(context)=>RegistrationScreen(),
        '/emailVerification':(context)=>EmailVerificationScreen(),
        '/pinVerification':(context)=>PinVerificationScreen(),
        '/setPassword':(context)=>SetPasswordScreen(),

      },

    );
  }
}