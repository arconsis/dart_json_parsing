// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Basket _$BasketFromJson(Map<String, dynamic> json) => Basket(
      const FoodConverter()
          .fromJson(json['foods'] as List<Map<String, dynamic>>),
    );

Map<String, dynamic> _$BasketToJson(Basket instance) => <String, dynamic>{
      'foods': const FoodConverter().toJson(instance.foods),
    };
