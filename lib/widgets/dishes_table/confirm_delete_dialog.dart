import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';

class ConfirmDeleteDialog extends StatelessWidget {
  const ConfirmDeleteDialog({Key? key, required this.dish}) : super(key: key);

  final Dish dish;

  @override
  Widget build(BuildContext context) {
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
}
