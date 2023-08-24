import 'package:flutter/material.dart';


class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);
  static final String id="Home_page";

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Instagram",style: TextStyle(fontFamily: 'BillaBong',color: Colors.white,fontSize:30.0 ),textAlign: TextAlign.center,),


      ),
      body: Center(
        child: Text("welcome to Instagram",style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
