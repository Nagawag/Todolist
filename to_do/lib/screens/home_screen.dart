import 'package:flutter/material.dart';
import 'package:to_do/tasks.dart';
import '../list/today.dart';
import 'package:to_do/settings.dart';
import 'package:to_do/list/wish.dart';
import 'package:to_do/list/work.dart';
import 'package:to_do/list/personal.dart';
import 'package:to_do/list/today.dart';

import '../utility/dialogue.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text('TO DO',
             style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold
             ),
           ),
           PopupMenuButton(
             icon: Icon(
               Icons.menu,
               color: Colors.black,
             ),
             itemBuilder: (context)=>[
               PopupMenuItem(child:
                   InkWell(
                     onTap: (){
                       Navigator.of(context).pushNamed('/settings');
                     },
                       child: Text('Settings'),
                   )
               ),
               PopupMenuItem(child:
                 InkWell(
                   onTap: (){
                     Navigator.of(context).pushNamed('/tasks');
                  },
                    child: Text('Tasks'),
                 )
               )

             ],
           ),

         ],

        ),


      ),

      body:SingleChildScrollView(
        padding: EdgeInsets.zero,
         physics: BouncingScrollPhysics(),

          child: Center(
          child: SizedBox(
             width: 1200,



             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 350,

                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      prefixIconConstraints: BoxConstraints(
                        maxHeight: 20,
                        minWidth: 25,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search'
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                Text('Tasks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),

    ),
                SizedBox(height: 20,),

                Container(
                  height: 50,
                  width: 300,
                  child:ListTile(
                    onTap: (){
                      Navigator.of(context).pushNamed('/today');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: Colors.white,
                   leading: Image.asset('assets/icons/sun.jpg',
                    height: 20,
                    width:30,
                  ),
                  title: Text('Today',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  height: 50,
                  width: 300,
                  child:ListTile(
                    onTap: (){
                      Navigator.of(context).pushNamed('/personal');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: Colors.white,
                    leading: Image.asset('assets/icons/personal.jpg',
                      height: 20,
                      width:30,
                    ),
                    title: Text('Personal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  height: 50,
                  width: 300,
                  child:ListTile(
                    onTap: (){
                      Navigator.of(context).pushNamed('/work');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: Colors.white,
                    leading: Image.asset('assets/icons/work.jpg',
                      height: 20,
                      width:30,
                    ),
                    title: Text('Work',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                Container(
                  height: 50,
                  width: 300,
                  child:ListTile(
                    onTap: (){
                      Navigator.of(context).pushNamed('/wish');
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    tileColor: Colors.white,
                    leading: Image.asset('assets/icons/wish.jpg',
                      height: 20,
                      width:30,
                    ),
                    title: Text('Wish',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                ),





              ],
      ),
    ),

    ),
      ),
        floatingActionButton: ElevatedButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Dialogue()),);
          },
          child: Icon(
              Icons.add),

        )


    );
  }
}