import 'package:flutter/material.dart';

class TextWithPadding extends StatelessWidget {
  const TextWithPadding({Key? key, required this.content, this.bold = false})
      : super(key: key);

  final String? content;
  final bool bold;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(content ?? '',
          style: TextStyle(
              fontWeight: bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
