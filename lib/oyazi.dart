import 'package:flutter/material.dart';
import 'package:kutushita_uragaeshi/assets/background.dart';

class Oyazi extends StatelessWidget {
  const Oyazi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("おやじ"),
      ),
      body: AppBackgroundPage(),
    );
  }
}
