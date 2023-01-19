import 'package:flutter/material.dart';
import 'package:tic_tac_toe/helper.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // addControls();
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TicTacToe'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CreateRow(),
            CreateRow(),
            CreateRow(),
          ],
        ),
      ),
    );
  }
}
