import 'package:food_product_list/data/dish.dart';

final _dishes = [
  const Dish(
      id: 1,
      name: 'котлеты',
      description: null,
      type: 0,
      cost: 100,
      imagePath: null,
      single: true,
      weight: '200g',
      idSupplier: 2),
  const Dish(
      id: 2,
      name: 'картофельное пюре',
      description: null,
      type: 1,
      cost: 200,
      imagePath: null,
      single: false,
      weight: '300g',
      idSupplier: 2),
  const Dish(
      id: 3,
      name: 'ещё какое-то блюдо',
      description: null,
      type: 2,
      cost: 200,
      imagePath: null,
      single: false,
      weight: '300g',
      idSupplier: 2),
  const Dish(
      id: 4,
      name: 'последнее блюдо',
      description: null,
      type: 3,
      cost: 200,
      imagePath: null,
      single: false,
      weight: '300g',
      idSupplier: 2),
];

List<Dish> getDishes() => _dishes.toList();
