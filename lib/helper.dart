import 'package:flutter/material.dart';

class CreateBoxes extends StatefulWidget {
  var control = TextEditingController();
  CreateBoxes(this.control, {super.key});

  @override
  State<CreateBoxes> createState() => CreateBoxesState();
}

class CreateBoxesState extends State<CreateBoxes> {
  static late List<TextEditingController> controls;

  String text = '';
  Color color = Colors.green;
  Color colorX = Colors.yellow, colorO = Colors.blue;
  int playCount = 0;

  static bool isPlayerOneTurn = true;

  void clicked() {
    setState(() {
      if (text == 'O' || text == 'X') return;

      if (isPlayerOneTurn) {
        text = 'X';
        color = colorX;
        isPlayerOneTurn = false;
      } else {
        text = 'O';
        color = colorO;
        isPlayerOneTurn = true;
      }
      playCount++;
      if (playCount == 9) playCount = 0;
    });
    // print('Text after is: ${text}');
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
          child: ElevatedButton(
            onPressed: clicked,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 40,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class CreateRow extends StatelessWidget {
  List<TextEditingController> controls;

  CreateRow(this.controls, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: CreateBoxes(controls[0]),
        ),
        Expanded(
          child: CreateBoxes(controls[1]),
        ),
        Expanded(
          child: CreateBoxes(controls[2]),
        ),
      ],
    );
  }
}
