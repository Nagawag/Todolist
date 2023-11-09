import 'package:flutter/material.dart';
import 'package:to_do/todo_item.dart';
import 'package:to_do/screens/home_screen.dart';

import '../todo.dart';
import '../utility/dialogue.dart';

class Wish extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          leading: BackButton(
            onPressed: (){
              Navigator.of(context).pushNamed('/home_screen');
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Wish',
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
                    child:ListTile(
                      leading: Image.asset('assets/icons/wish.jpg',
                        height: 40,
                        width:40,
                      ),

                      title: Text('Wish',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Todo()


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