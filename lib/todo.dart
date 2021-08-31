import 'package:flutter/material.dart';
import 'package:kutushita_uragaeshi/add_todo.dart';
import 'package:kutushita_uragaeshi/assets/background.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("todoPage"),
      ),
      body: Stack(
        children: [
          AppBackgroundPage(),
          Card(
            child: ListTile(
              title: Text("こんにちは"),
              subtitle: Text("小田健人"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTodo(),
                fullscreenDialog: true,
              ));
        },
      ),
    );
  }
}
