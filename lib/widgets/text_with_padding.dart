import 'package:flutter/material.dart';

class TextWithPadding extends StatelessWidget {
  const TextWithPadding({Key? key, required this.text, this.isBold = false})
      : super(key: key);

  final String text;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(text,
          style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
