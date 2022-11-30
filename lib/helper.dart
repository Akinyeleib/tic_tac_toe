import 'package:flutter/material.dart';

class CreateBoxes extends StatefulWidget {
  var control = TextEditingController();
  CreateBoxes(this.control);

  @override
  CreateBoxesState createState() => CreateBoxesState(control);
}

class CreateBoxesState extends State {
  CreateBoxesState(this.control);

  var control = TextEditingController();
  String text = '';

  static bool isPlayerOneTurn = true;

  void clicked() {
    setState(() {
      if (isPlayerOneTurn) {
        text = 'X';
        isPlayerOneTurn = false;
      } else {
        text = 'O';
        isPlayerOneTurn = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Card(
        color: Colors.purple,
        child: InkWell(
          onTap: clicked,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateRow extends StatelessWidget {
  List<TextEditingController> controls;

  CreateRow(this.controls);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CreateBoxes(controls[0]),
        CreateBoxes(controls[1]),
        CreateBoxes(controls[2]),
      ],
    );
  }
}
