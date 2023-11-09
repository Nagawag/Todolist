import 'package:flutter/material.dart';
import 'package:to_do/todo_item.dart';
import 'package:to_do/screens/home_screen.dart';

class Task extends StatelessWidget{
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
              Text('Tasks',
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
                    onTap: (){},
                    child: Text('Settings'),
                  )
                  ),


                ],
              ),
            ],
              ) ,

    ),

      body: SingleChildScrollView(
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),

      child: Center(
      child: SizedBox(
      width: 1200,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          SizedBox(height: 30,),
          Container(
            child:Text('Recently added',
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
    ),

    ),

    ),
           SizedBox(height: 30,),
           Todo(),
           SizedBox(height: 30,),
           Container(
             child:Text('Recently deleted',
               style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               ),

             ),

           ),

           SizedBox(height: 30,),
           Todo(),

           SizedBox(height: 30,),
           Container(
             child:Text('Finished tasks',
               style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
               ),

             ),

           ),
           SizedBox(height: 30,),
           Todo(),

    ],
    ),


    ),),),
    );
  }
}