import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(fontWeight: FontWeight.bold));
  }
}
