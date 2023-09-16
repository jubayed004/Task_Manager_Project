import 'package:flutter/material.dart';
import 'package:taskmanager/screen/onboarding/emailverificationscreen.dart';
import 'package:taskmanager/screen/onboarding/pinverificationscreen.dart';
import 'package:taskmanager/screen/onboarding/registrationscreen.dart';
import 'package:taskmanager/screen/onboarding/setpasswordscreen.dart';
import 'package:taskmanager/utility/utility.dart';
import 'screen/onboarding/loginscreen.dart';
import 'screen/onboarding/splashscreen.dart';
import 'screen/task/newtasklistscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String?token = await ReadUserData('token');
  if (token==null) {
    runApp( MyApp('/login'));
  }
  else{
    runApp( MyApp('/newTaskList'));
  }

}
class MyApp extends StatelessWidget {
  final String firstRoute;
   MyApp(this.firstRoute);

  @override                    
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task Manager",
      initialRoute: firstRoute,
      routes: {

        '/':(context)=>const SplashScreen(),
        '/login':(context)=>const LoginScreen(),
        '/registration':(context)=>const RegistrationScreen(),
        '/emailVerification':(context)=>const EmailVerificationScreen(),
        '/pinVerification':(context)=>const PinVerificationScreen(),
        '/setPassword':(context)=>const SetPasswordScreen(),
        '/newTaskList':(context)=>const NewTaskListScreen(),

      },

    );
  }
}
