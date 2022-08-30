import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/utils/buttons/change_button.dart';
import 'package:food_product_list/utils/buttons/delete_button.dart';
import 'package:food_product_list/widgets/dish_form/dish_form_dialog.dart';
import 'package:food_product_list/widgets/dishes_table/confirm_delete_dialog.dart';
import 'package:food_product_list/widgets/bold_text.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'dishes_table.g.dart';

const _columns = [
  DataColumn(label: BoldText('Название')),
  DataColumn(label: BoldText('Стоимость')),
  DataColumn(label: BoldText('Тип')),
  DataColumn(label: BoldText('Вес')),
  DataColumn(label: SizedBox(height: 40)),
  DataColumn(label: SizedBox.shrink()),
];

@swidget
Widget dishesTable(BuildContext context, {required List<Dish> dishes}) {
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
                  ChangeButton(
                    onPressed: () => {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                            DishFormDialog(dish: dish),
                      ),
                    },
                  ),
                ),
                DataCell(
                  DeleteButton(
                    onPressed: () => {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                            ConfirmDeleteDialog(dish: dish),
                      ),
                    },
                  ),
                )
              ],
            ),
          )
          .toList(),
    ),
  );
}
