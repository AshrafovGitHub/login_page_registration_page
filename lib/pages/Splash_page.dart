import 'dart:async';

import 'package:flutter/material.dart';

import 'Home_page.dart';
import 'Sign_page.dart';

class Splash_page extends StatefulWidget {
  static final String id="Splash_page";

  const Splash_page({Key? key}) : super(key: key);

  @override
  State<Splash_page> createState() => _Splash_pageState();
}

class _Splash_pageState extends State<Splash_page> {

  var isLoggedIn=false;
  _initTimer(){
      Timer(Duration(seconds: 3),(){

        if(isLoggedIn){

          Navigator.pushReplacementNamed(context, Home_page.id);
        }
        else
        {

          Navigator.pushReplacementNamed(context, Sign_page.id);
        }

      });

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        color: Colors.white,
        child:Stack(
          children: [
            Center(
              child: Image.asset("assets/images/insta.png", height: 80.0,width: 80.0,),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text("From facebook",style: TextStyle(color: Colors.black,fontSize: 18.0),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
