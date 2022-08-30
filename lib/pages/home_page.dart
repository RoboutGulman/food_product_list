import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_product_list/model/dishes_provider.dart';
import 'package:food_product_list/widgets/dishes_table/dishes_table.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'home_page.g.dart';

@cwidget
Widget homePage(BuildContext context, WidgetRef ref) {
  final dishesList = ref.watch(dishesProvider);

  return Scaffold(
    appBar: AppBar(
      title: const Text('Home page'),
    ),
    body: dishesList.when(
        data: (dishes) => DishesTable(dishes: dishes),
        error: (err, _) => Text('Error: $err'),
        loading: () => const Center(child: CircularProgressIndicator())),
  );
}
