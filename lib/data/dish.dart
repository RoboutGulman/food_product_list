import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

enum DishType { salad, soup, garnish, secondDish }

extension DishExtension on DishType {
  static const names = {
    DishType.salad: 'салат',
    DishType.soup: 'суп',
    DishType.garnish: 'гарнир',
    DishType.secondDish: 'второе блюдо',
  };

  String? get name => names[this];
}

@freezed
class Dish with _$Dish {
  const factory Dish({
    required final int id,
    required final String name,
    required final double price,
    required final String description,
    required final DishType type,
    required final String weight,
    required final String imagePath,
  }) = _Dish;

  factory Dish.fromJson(Map<String, Object?> json) => _$DishFromJson(json);
}
