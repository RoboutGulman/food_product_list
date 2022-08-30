import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_product_list/data/dish.dart';
import 'package:food_product_list/model/fake_dishes_list_loader.dart';

final dishesProvider = FutureProvider<List<Dish>>((_) => loadDishes());

