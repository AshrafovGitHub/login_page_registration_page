import 'package:flutter/material.dart';
import 'package:login_page_registration_page/animations/Fade_animation.dart';
import 'package:login_page_registration_page/pages/Home_page.dart';

import 'Sign_up_page.dart';

class Sign_page extends StatefulWidget {
  const Sign_page({Key? key}) : super(key: key);
  static final String id="Sign_page";

  @override
  State<Sign_page> createState() => _Sign_pageState();
}

class _Sign_pageState extends State<Sign_page> with SingleTickerProviderStateMixin {


  TextEditingController emailController= new TextEditingController();
  TextEditingController passwordController= new TextEditingController();
  _doSignIn(){
    String email=emailController.text;
    String password=passwordController.text;

    if(email.isNotEmpty && password.isNotEmpty){

      Navigator.pushReplacementNamed(context, Home_page.id);
    }
    else{

      Navigator.pushReplacementNamed(context, Sign_up_page.id);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Fade_animation(Text("Instagram",style: TextStyle(fontSize: 45.0,fontFamily: 'Billabong',),)              ),
              Container(
                height: 48.0,
                margin: EdgeInsets.only(left: 20,right:20,top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),

                  color: Colors.grey[300],
                ),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    hintText: "Email",
                    hintStyle: TextStyle(color:Colors.grey),
                  ),
                ),


              ),
              Container(
                height: 48.0,
                margin: EdgeInsets.only(left: 20,right:20,top: 15),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                child: TextField(
                  controller:passwordController ,
                  style: TextStyle(fontSize: 16.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color:Colors.teal)),
                    hintText: "Password",
                    hintStyle: TextStyle(color:Colors.grey),
                  ),
                ),


              ),

              Container(
                  margin: EdgeInsets.only(top: 15,right: 20,left: 20),
                  height: 48.0,
                  width: double.infinity,
                  color: Colors.blue,
                  child:TextButton(
                    onPressed: (){
                      _doSignIn();
                    },
                    child: Text("Sign in",style: TextStyle(fontSize: 16.0,color: Colors.white),),

                  ),

              ),
              Container(
                margin: EdgeInsets.only(top: 15,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Sign Up",style: TextStyle(fontSize: 16.0,color: Colors.black,),),
                      onTap: (){
                        Navigator.pushReplacementNamed(context, Sign_up_page.id);
                      },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
