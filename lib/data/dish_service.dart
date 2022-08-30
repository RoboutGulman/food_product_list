import 'package:food_product_list/data/dish.dart';

final _dishes = [
  const Dish(
      id: 1,
      name: 'котлеты',
      price: 100,
      description: '',
      type: DishType.garnish,
      weight: '200g',
      imagePath: ''),
  const Dish(
      id: 2,
      name: 'картофельное пюре',
      price: 200,
      description: '',
      type: DishType.salad,
      weight: '300g',
      imagePath: ''),
  const Dish(
      id: 3,
      name: 'ещё какое-то блюдо',
      price: 300,
      description: '',
      type: DishType.secondDish,
      weight: '400g',
      imagePath: ''),
  const Dish(
      id: 4,
      name: 'последнее блюдо',
      price: 400,
      description: '',
      type: DishType.soup,
      weight: '500g',
      imagePath: ''),
];

List<Dish> getDishes() => _dishes.toList();
