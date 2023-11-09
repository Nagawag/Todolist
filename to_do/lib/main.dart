import 'package:flutter/material.dart';
import 'package:to_do/list/today.dart';
import 'package:to_do/list/wish.dart';
import 'package:to_do/list/personal.dart';
import 'package:to_do/list/work.dart';
import 'package:to_do/screens/home_screen.dart';
import 'package:to_do/sett.dart';
import 'package:to_do/settings.dart';
import 'package:to_do/tasks.dart';
import 'screens/splash_screen.dart';



main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

      routes: {
        '/settings': (context) => Settings(),
        '/tasks': (context) => Task(),
        '/personal': (context) => Personal(),
        '/wish': (context) => Wish(),
        '/work': (context) => Work(),
        '/today': (context) => Today(),
        '/home_screen': (context) => Home(),

      },
    );
  }
}



