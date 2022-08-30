import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish(
      {required int id,
      required String? name,
      required String? description,
      required int type,
      required double cost,
      required String? imagePath,
      required bool single,
      required String? weight,
      required int idSupplier}) = _Dish;

  factory Dish.fromJson(Map<String, Object?> json) => _$DishFromJson(json);
}
