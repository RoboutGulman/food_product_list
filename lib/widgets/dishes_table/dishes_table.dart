import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/widgets/dish_form/dish_form_dialog.dart';
import 'package:food_product_list/widgets/dishes_table/confirm_delete_dialog.dart';
import 'package:food_product_list/widgets/bold_text.dart';

const _columns = [
  DataColumn(label: BoldText('Название')),
  DataColumn(label: BoldText('Стоимость')),
  DataColumn(label: BoldText('Тип')),
  DataColumn(label: BoldText('Вес')),
  DataColumn(label: SizedBox(height: 40)),
  DataColumn(label: SizedBox.shrink()),
];

class DishesTable extends StatelessWidget {
  const DishesTable({Key? key, required this.dishes}) : super(key: key);

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        border: TableBorder.all(color: const Color(0xffdcdddc), width: 1),
        columns: _columns,
        rows: dishes
            .map(
              (dish) => DataRow(
                cells: [
                  DataCell(Text(dish.name)),
                  DataCell(Text(dish.price.toStringAsFixed(2))),
                  DataCell(Text(dish.type.name ?? '')),
                  DataCell(Text(dish.weight)),
                  DataCell(
                    IconButton(
                      onPressed: () => {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              DishFormDialog(dish: dish),
                        ),
                      },
                      icon: const Icon(
                        Icons.border_color,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  DataCell(
                    IconButton(
                      onPressed: () => {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) =>
                              ConfirmDeleteDialog(dish: dish),
                        ),
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
