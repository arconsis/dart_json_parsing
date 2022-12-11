// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fruit _$FruitFromJson(Map<String, dynamic> json) => Fruit._withType(
      $enumDecode(_$FoodTypeEnumMap, json['type']),
      json['name'] as String,
      json['barcode'] as String,
      (json['price'] as num).toDouble(),
      (json['sweetness'] as num).toDouble(),
    );

Map<String, dynamic> _$FruitToJson(Fruit instance) => <String, dynamic>{
      'type': _$FoodTypeEnumMap[instance.type]!,
      'name': instance.name,
      'barcode': instance.barcode,
      'price': instance.price,
      'sweetness': instance.sweetness,
    };

const _$FoodTypeEnumMap = {
  FoodType.unknown: 'unknown',
  FoodType.fruit: 'fruit',
  FoodType.meat: 'meat',
};
