import 'package:flutter/material.dart';
import 'package:kutushita_uragaeshi/assets/hex_color.dart';

class AddTodo extends StatefulWidget {
  AddTodo({Key? key}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final _formKey = GlobalKey<FormState>();

  var title = "";
  var need = "";

  final titleController = TextEditingController();
  final needController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    needController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FFFFE0'),
      appBar: AppBar(
        title: Text("新規追加"),
      ),
      body: Card(
        margin: const EdgeInsets.all(30.0),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 300,
          height: 330,
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'タイトル',
                        labelStyle: TextStyle(fontSize: 20.0),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                      ),
                      controller: titleController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'タイトルを入力してください';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: TextFormField(
                      autofocus: false,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: '詳細',
                        labelStyle: TextStyle(fontSize: 20.0),
                        errorStyle:
                            TextStyle(color: Colors.redAccent, fontSize: 15),
                      ),
                      controller: needController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '詳細を入力してください';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                title = titleController.text;
                                need = needController.text;
                              });
                              // registration();
                            }
                          },
                          child: Text(
                            '登録する',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
