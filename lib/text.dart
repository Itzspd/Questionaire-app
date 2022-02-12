import 'package:flutter/material.dart';

class text extends StatelessWidget {
  var facts;
  text(this.facts, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(
        facts,
        style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 26),
      ),
    );
  }
}
