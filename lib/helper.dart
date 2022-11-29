import 'package:flutter/material.dart';

class CreateBoxes extends StatelessWidget {
  var control = TextEditingController();

  CreateBoxes(this.control);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Card(
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'X',
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ],
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
