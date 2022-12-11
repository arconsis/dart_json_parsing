import 'package:json_annotation/json_annotation.dart';
import 'package:json_de_serialisation/food.dart';
import 'package:json_de_serialisation/food_type.dart';
import 'package:json_de_serialisation/fruit.dart';
import 'package:json_de_serialisation/meat.dart';

class FoodConverter extends JsonConverter<List<Food>, List<Map<String, dynamic>>> {
  static const String _typeKey = "type";

  const FoodConverter();

  @override
  List<Food> fromJson(List<Map<String, dynamic>> json) => json
      .map((foodJson) {
        if (foodJson.containsKey(_typeKey)) {
          final type = FoodType.fromString(foodJson[_typeKey]);

          switch (type) {
            case FoodType.unknown:
              break;
            case FoodType.fruit:
              return Fruit.fromJson(foodJson);
            case FoodType.meat:
              return Meat.fromJson(foodJson);
          }
        }
      })
      .whereType<Food>()
      .toList();

  @override
  List<Map<String, dynamic>> toJson(List<Food> object) => object.map((food) => food.toJson()).toList();
}
