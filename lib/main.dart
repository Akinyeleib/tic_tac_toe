import 'package:flutter/material.dart';
import 'helper.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  var control1 = TextEditingController();
  var control2 = TextEditingController();
  var control3 = TextEditingController();

  var control4 = TextEditingController();
  var control5 = TextEditingController();
  var control6 = TextEditingController();

  var control7 = TextEditingController();
  var control8 = TextEditingController();
  var control9 = TextEditingController();

  late List<TextEditingController> controls;

  void addControls() {
    controls.clear();
    controls.add(control1);
    controls.add(control2);
    controls.add(control3);
  }

  @override
  Widget build(BuildContext context) {
    addControls();
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TicTacToe'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CreateRow([control1, control2, control3]),
            CreateRow([control4, control5, control6]),
            CreateRow([control7, control8, control9]),
          ],
        ),
      ),
    );
  }
}
