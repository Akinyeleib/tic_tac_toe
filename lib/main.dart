import 'package:flutter/material.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('TicTacToe'),
          centerTitle: true,
        ),
        body: Text("We're here..."),
      ),
    );
  }
}
