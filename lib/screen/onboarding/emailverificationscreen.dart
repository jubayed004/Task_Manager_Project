import 'package:flutter/material.dart';
import 'package:taskmanager/style/style.dart';

import 'pinverificationscreen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  Map<String,String> FormValues={"email":"", "password":""};
  bool Loading=false;

  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
              alignment: Alignment.center,
              child: Loading?(Center(child: CircularProgressIndicator())):(
                  SingleChildScrollView(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Your Email Address", style: Head1Text(colorDarkBlue)),
                        SizedBox(height: 1),
                        Text("A 6 digit verification pin will send to your email address", style: Head6Text(colorLightGray)),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (Textvalue){

                          },
                          decoration: AppInputDecoration("Email Address"),
                        ),
                        SizedBox(height: 20),
                        Container(child: ElevatedButton(
                          style: AppButtonStyle(),
                          child: SuccessButtonChild('Next'),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>PinVerificationScreen()));
                          },
                        ),)
                      ],
                    ),
                  )
              )
          )
        ],
      ),
    );
  }
}
