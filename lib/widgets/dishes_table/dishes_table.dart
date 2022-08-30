import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/widgets/dish_form/dish_form.dart';
import 'package:food_product_list/widgets/text_with_padding.dart';

const TableRow _tableHeader = TableRow(
  children: <Widget>[
    TextWithPadding(text: 'Название', isBold: true),
    TextWithPadding(text: 'Стоимость', isBold: true),
    TextWithPadding(text: 'Тип', isBold: true),
    TextWithPadding(text: 'Вес', isBold: true),
    SizedBox(height: 40),
    SizedBox.shrink(),
  ],
);

class DishesTable extends StatelessWidget {
  const DishesTable({Key? key, required this.dishes}) : super(key: key);

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //TODO:
      //dataTable вместо Table
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          2: FixedColumnWidth(110),
          3: FixedColumnWidth(50),
          4: FixedColumnWidth(40),
          5: FixedColumnWidth(40),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          _tableHeader,
          ...dishes
              .map(
                (dish) => TableRow(
                  children: <Widget>[
                    TextWithPadding(text: dish.name),
                    TextWithPadding(text: dish.price.toStringAsFixed(2)),
                    TextWithPadding(text: dish.type.name ?? ''),
                    TextWithPadding(text: dish.weight),
                    IconButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/dish_forms')},
                      icon: const Icon(
                        Icons.border_color,
                        color: Colors.blue,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
