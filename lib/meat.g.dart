// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meat _$MeatFromJson(Map<String, dynamic> json) => Meat._withType(
      $enumDecode(_$FoodTypeEnumMap, json['type']),
      json['name'] as String,
      json['barcode'] as String,
      (json['price'] as num).toDouble(),
      json['animal'] as String,
      json['isRedMeat'] as bool,
    );

Map<String, dynamic> _$MeatToJson(Meat instance) => <String, dynamic>{
      'type': _$FoodTypeEnumMap[instance.type]!,
      'name': instance.name,
      'barcode': instance.barcode,
      'price': instance.price,
      'animal': instance.animal,
      'isRedMeat': instance.isRedMeat,
    };

const _$FoodTypeEnumMap = {
  FoodType.unknown: 'unknown',
  FoodType.fruit: 'fruit',
  FoodType.meat: 'meat',
};
