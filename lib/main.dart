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

  @override
  Widget build(BuildContext context) {
    // addControls();
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
            Row(
              children: [
                CreateBoxes(control1),
                CreateBoxes(control2),
                CreateBoxes(control3),
              ],
            ),
            Row(
              children: [
                CreateBoxes(control4),
                CreateBoxes(control5),
                CreateBoxes(control6),
              ],
            ),
            Row(
              children: [
                CreateBoxes(control7),
                CreateBoxes(control8),
                CreateBoxes(control9),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
