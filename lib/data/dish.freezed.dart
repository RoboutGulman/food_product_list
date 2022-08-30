// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dish.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dish _$DishFromJson(Map<String, dynamic> json) {
  return _Dish.fromJson(json);
}

/// @nodoc
mixin _$Dish {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  bool get single => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  int get idSupplier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DishCopyWith<Dish> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DishCopyWith<$Res> {
  factory $DishCopyWith(Dish value, $Res Function(Dish) then) =
      _$DishCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? description,
      int type,
      double cost,
      String? imagePath,
      bool single,
      String? weight,
      int idSupplier});
}

/// @nodoc
class _$DishCopyWithImpl<$Res> implements $DishCopyWith<$Res> {
  _$DishCopyWithImpl(this._value, this._then);

  final Dish _value;
  // ignore: unused_field
  final $Res Function(Dish) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? cost = freezed,
    Object? imagePath = freezed,
    Object? single = freezed,
    Object? weight = freezed,
    Object? idSupplier = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      single: single == freezed
          ? _value.single
          : single // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: idSupplier == freezed
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DishCopyWith<$Res> implements $DishCopyWith<$Res> {
  factory _$$_DishCopyWith(_$_Dish value, $Res Function(_$_Dish) then) =
      __$$_DishCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? description,
      int type,
      double cost,
      String? imagePath,
      bool single,
      String? weight,
      int idSupplier});
}

/// @nodoc
class __$$_DishCopyWithImpl<$Res> extends _$DishCopyWithImpl<$Res>
    implements _$$_DishCopyWith<$Res> {
  __$$_DishCopyWithImpl(_$_Dish _value, $Res Function(_$_Dish) _then)
      : super(_value, (v) => _then(v as _$_Dish));

  @override
  _$_Dish get _value => super._value as _$_Dish;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? cost = freezed,
    Object? imagePath = freezed,
    Object? single = freezed,
    Object? weight = freezed,
    Object? idSupplier = freezed,
  }) {
    return _then(_$_Dish(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      cost: cost == freezed
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      single: single == freezed
          ? _value.single
          : single // ignore: cast_nullable_to_non_nullable
              as bool,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: idSupplier == freezed
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dish implements _Dish {
  const _$_Dish(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      required this.cost,
      required this.imagePath,
      required this.single,
      required this.weight,
      required this.idSupplier});

  factory _$_Dish.fromJson(Map<String, dynamic> json) => _$$_DishFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int type;
  @override
  final double cost;
  @override
  final String? imagePath;
  @override
  final bool single;
  @override
  final String? weight;
  @override
  final int idSupplier;

  @override
  String toString() {
    return 'Dish(id: $id, name: $name, description: $description, type: $type, cost: $cost, imagePath: $imagePath, single: $single, weight: $weight, idSupplier: $idSupplier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dish &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.cost, cost) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.single, single) &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality()
                .equals(other.idSupplier, idSupplier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(cost),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(single),
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(idSupplier));

  @JsonKey(ignore: true)
  @override
  _$$_DishCopyWith<_$_Dish> get copyWith =>
      __$$_DishCopyWithImpl<_$_Dish>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DishToJson(
      this,
    );
  }
}

abstract class _Dish implements Dish {
  const factory _Dish(
      {required final int id,
      required final String? name,
      required final String? description,
      required final int type,
      required final double cost,
      required final String? imagePath,
      required final bool single,
      required final String? weight,
      required final int idSupplier}) = _$_Dish;

  factory _Dish.fromJson(Map<String, dynamic> json) = _$_Dish.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int get type;
  @override
  double get cost;
  @override
  String? get imagePath;
  @override
  bool get single;
  @override
  String? get weight;
  @override
  int get idSupplier;
  @override
  @JsonKey(ignore: true)
  _$$_DishCopyWith<_$_Dish> get copyWith => throw _privateConstructorUsedError;
}
