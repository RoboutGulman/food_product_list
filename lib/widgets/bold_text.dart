import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'bold_text.g.dart';

@swidget
Widget boldText(String text) {
  return Text(text, style: const TextStyle(fontWeight: FontWeight.bold));
}
