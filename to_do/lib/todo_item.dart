import 'package:flutter/material.dart';

class Todo extends StatefulWidget{
  @override
  To createState() => To();
}





class To extends State<Todo>{
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      height: 50,
      width: 300,
      child:
      ListTile(
        onTap: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading:Checkbox(
          value: isChecked,
          onChanged: (bool? newValue){
            setState((){
              isChecked= newValue ?? false;
            });
          },
        ),
        title: Text('take medication'),
        trailing: Container(


          child:
          Icon (


              Icons.delete,
              color: Colors.purple,

            ),
          ),
        ),



      );






  }
}