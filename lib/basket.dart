import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_de_serialisation/food.dart';
import 'package:json_de_serialisation/food_converter.dart';

part 'basket.g.dart';

@JsonSerializable()
class Basket extends Equatable {
  @FoodConverter() // annotation to convert List<Food> to and from JSON (Map<String, dynamic>)
  final List<Food> foods;
  @JsonKey(ignore: true) // ignore, since it's calculated from the food list
  final double total;

  Basket(this.foods) : total = foods.fold(0, (previousValue, element) => previousValue + element.price);

  factory Basket.fromJson(Map<String, dynamic> json) => _$BasketFromJson(json);

  Map<String, dynamic> toJson() => _$BasketToJson(this);

  @override
  List<Object?> get props => [foods, total];
}
