

import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool  taskcompleted;
  Function(bool?)? onChanged;

   TodoTile({super.key,
    required this.taskName,
    required this.taskcompleted,
    required this.onChanged
  });



  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: EdgeInsets.all(24),
      child:Container(
        height: 70,
        width: 500,
        padding: EdgeInsets.all(24),
      child:Row(
        children: [
          Checkbox(value: taskcompleted, onChanged: onChanged,
            activeColor: Colors.black,
          ),
          Text(taskName) ,
        ],
      ),

      decoration: BoxDecoration(
        color:Colors.white
      ),
      ),
    );
  }
}
