import 'package:flutter/material.dart';
import 'package:login_page_registration_page/pages/Home_page.dart';
import 'package:login_page_registration_page/pages/Sign_page.dart';
import 'package:login_page_registration_page/pages/Sign_up_page.dart';
import 'package:login_page_registration_page/pages/Splash_page.dart';

import 'animations/Fade_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      home: Splash_page(),

      routes: {
        Splash_page.id:(context)=>Splash_page(),
        Home_page.id:(context)=>Home_page(),
        Sign_page.id:(context)=>Sign_page(),
        Sign_up_page.id:(context)=>Sign_up_page(),
        //Fade_animation.id:(context)=>Fade_animation(),

      },
    );
  }
}
