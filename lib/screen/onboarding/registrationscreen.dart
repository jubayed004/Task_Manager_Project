import 'package:flutter/material.dart';
import 'package:taskmanager/api/apiClient.dart';
import 'package:taskmanager/style/style.dart';

import 'loginscreen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  Map<String,String> FormValues={"email":"", "password":""};
  bool Loading=false;

  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }
  FormOnSubmit() async{

    if(FormValues['email']!.length==0){
      ErrorToast('Email Required !');
    }

    else if(FormValues['firstName']!.length==0){
      ErrorToast('First Name Required !');
    }

    else if(FormValues['lastName']!.length==0){
      ErrorToast('Last Name Required !');
    }

    else if(FormValues['mobile']!.length==0){
      ErrorToast('Mobile No Required !');
    }

    else if(FormValues['password']!.length==0){
      ErrorToast('Mobile No Required !');
    }
    else if(FormValues['password']!=FormValues['cpassword']){
      ErrorToast('Confirm password should be same!');
    }
    else{
      setState(() {Loading=true;});
      bool res=await RegistrationRequest(FormValues);
      if(res==true){
        Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
      }
      else{
        setState(() {Loading=false;});
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child:Loading?(Center(child: CircularProgressIndicator())):(
                    Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Join With Us", style: Head1Text(colorDarkBlue)),
                          SizedBox(height: 1),
                          Text("Learn with jubayed islam", style: Head6Text(colorLightGray)),

                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("Email Address"),
                              onChanged: (Textvalue){
                              }
                          ),

                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("First Name"),
                              onChanged: (Textvalue){
                              }
                          ),

                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("Last Name"),
                              onChanged: (Textvalue){
                              }
                          ),

                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("Mobile"),
                              onChanged: (Textvalue){

                              }
                          ),

                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("Password"),
                              onChanged: (Textvalue){

                              }
                          ),


                          SizedBox(height: 20),
                          TextFormField(
                              decoration: AppInputDecoration("Confirm Password"),
                              onChanged: (Textvalue){

                              }
                          ),

                          SizedBox(height: 20),
                          Container(child: ElevatedButton(
                            style: AppButtonStyle(),
                            child: SuccessButtonChild('Registration'),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                            },
                          ),)

                        ],
                      ),
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}
