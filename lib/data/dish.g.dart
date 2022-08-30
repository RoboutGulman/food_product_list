// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dish _$$_DishFromJson(Map<String, dynamic> json) => _$_Dish(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      type: $enumDecode(_$DishTypeEnumMap, json['type']),
      weight: json['weight'] as String,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$_DishToJson(_$_Dish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'type': _$DishTypeEnumMap[instance.type]!,
      'weight': instance.weight,
      'imagePath': instance.imagePath,
    };

const _$DishTypeEnumMap = {
  DishType.salad: 'salad',
  DishType.soup: 'soup',
  DishType.garnish: 'garnish',
  DishType.secondDish: 'secondDish',
};
