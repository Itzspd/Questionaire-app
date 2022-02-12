import 'package:flutter/material.dart';

class Textcontrol extends StatelessWidget {
  String textinput;
  VoidCallback textcontol;
  Textcontrol(this.textinput, this.textcontol, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: textcontol,
        child: Text(textinput),
      ),
    );
  }
}
