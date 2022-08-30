import 'package:flutter/material.dart';
import 'package:food_product_list/widgets/style.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'change_button.g.dart';

@swidget
Widget changeButton({required void Function() onPressed}) {
  return IconButton(
    splashRadius: 20,
    iconSize: 25,
    color: ColorPalette.secondary,
    onPressed: onPressed,
    icon: const Icon(Icons.edit),
  );
}
