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
                Expanded(child: CreateBoxes(control1)),
                Expanded(child: CreateBoxes(control2)),
                Expanded(child: CreateBoxes(control3)),
              ],
            ),
            Row(
              children: [
                Expanded(child: CreateBoxes(control4)),
                Expanded(child: CreateBoxes(control5)),
                Expanded(child: CreateBoxes(control6)),
              ],
            ),
            Row(
              children: [
                Expanded(child: CreateBoxes(control7)),
                Expanded(child: CreateBoxes(control8)),
                Expanded(child: CreateBoxes(control9)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
