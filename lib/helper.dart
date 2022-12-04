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

  static bool isPlayerOneTurn = true;

  void clicked() {
    setState(() {
      if (text == 'O' || text == 'X') return;
      print('Text before is: ${text}');
      if (isPlayerOneTurn) {
        text = 'X';
        isPlayerOneTurn = false;
      } else {
        text = 'O';
        isPlayerOneTurn = true;
      }
    });
    print('Text after is: ${text}');
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
        Expanded(child: CreateBoxes(controls[0])),
        Expanded(child: CreateBoxes(controls[1])),
        Expanded(child: CreateBoxes(controls[2])),
      ],
    );
  }
}
