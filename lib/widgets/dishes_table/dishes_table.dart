import 'package:flutter/material.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/widgets/dish_form/dish_form.dart';
import 'package:food_product_list/widgets/dishes_table/get_table_header.dart';
import 'package:food_product_list/widgets/text_with_padding.dart';

String _getDishType(int type) {
  switch (type) {
    case 0:
      return "салат";
    case 1:
      return "суп";
    case 2:
      return "гарнир";
    case 3:
      return "второе блюдо";
    default:
      throw Error();
  }
}

class DishesTable extends StatelessWidget {
  const DishesTable({Key? key, required this.dishes}) : super(key: key);

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            getTableHeader(),
            for (Dish dish in dishes)
              TableRow(
                children: <Widget>[
                  TextWithPadding(content: dish.name),
                  TextWithPadding(content: dish.cost.toStringAsFixed(2)),
                  TextWithPadding(content: _getDishType(dish.type)),
                  TextWithPadding(content: dish.weight),
                  IconButton(
                    onPressed: () => {
                      Navigator.pushNamed(context, '/dish_forms')
                    },
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
          ]),
    );
  }
}
