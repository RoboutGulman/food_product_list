import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'confirm_delete_dialog.g.dart';

@swidget
Widget confirmDeleteDialog(BuildContext context, {required Dish dish}) {
  return AlertDialog(
    title: const Text('Подверждение'),
    content: Text(
      'Вы точно хотите удалить продукт ${dish.name}?',
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          print('Remove ${dish.name}');
          Navigator.pop(context, 'Да');
        },
        child: const Text('Да'),
      ),
    ],
  );
}
