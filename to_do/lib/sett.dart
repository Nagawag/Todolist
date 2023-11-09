import 'package:flutter/material.dart';



class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoHomePage(),
    );
  }
}

class TodoHomePage extends StatefulWidget {
  @override
  _TodoHomePageState createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  bool isActive = true; // Variable to track the setting state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Active Mode',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: isActive,
              onChanged: (bool newValue) {
                setState(() {
                  isActive = newValue;
                });
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Other Settings',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            // Add other settings widgets here
          ],
        ),
      ),
    );
  }
}
