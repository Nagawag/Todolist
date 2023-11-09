import 'package:flutter/material.dart';
import 'package:to_do/utility/button.dart';
import 'package:to_do/list/today.dart';

import '../screens/home_screen.dart';


class Dialogue extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task'
              ),
            ),
            Row(
              children: [
                Button(text:'save', onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()),);
                }),
                SizedBox(height: 6,width: 6,),
                Button(text:'cancel', onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Today()),);
                })
              ],
            )
          ],
        ),
      ),

    );
  }
}
