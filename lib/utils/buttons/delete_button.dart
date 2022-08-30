import 'package:flutter/material.dart';
import 'package:food_product_list/utils/style.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'delete_button.g.dart';

@swidget
Widget deleteButton({required void Function() onPressed}) {
  return IconButton(
    splashRadius: 20,
    iconSize: 25,
    color: ColorPalette.link,
    onPressed: onPressed,
    icon: const Icon(Icons.delete),
  );
}
