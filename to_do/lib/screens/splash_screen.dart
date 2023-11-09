import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do/screens/home_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen>{
  @override
  void initState(){
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home(),

      ));


    });
    super.initState();
  }








  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
       body: Center(
         child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/list.jpg',
                height: 50,
                width: 50,
              ),
              SizedBox(height: 30,),
              Text('WELCOME',
                style:TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold
                )
                ,)
            ],
         ),
       ),
    );
  }
}