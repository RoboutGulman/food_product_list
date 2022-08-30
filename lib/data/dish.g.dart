// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Dish _$$_DishFromJson(Map<String, dynamic> json) => _$_Dish(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as int,
      cost: (json['cost'] as num).toDouble(),
      imagePath: json['imagePath'] as String?,
      single: json['single'] as bool,
      weight: json['weight'] as String?,
      idSupplier: json['idSupplier'] as int,
    );

Map<String, dynamic> _$$_DishToJson(_$_Dish instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'cost': instance.cost,
      'imagePath': instance.imagePath,
      'single': instance.single,
      'weight': instance.weight,
      'idSupplier': instance.idSupplier,
    };
