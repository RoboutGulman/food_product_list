import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/data/dish_service.dart';

Future<List<Dish>> loadDishes() => Future.delayed(
      const Duration(seconds: 1),
      () => getDishes(),
    );
