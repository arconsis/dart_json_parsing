import 'package:json_annotation/json_annotation.dart';
import 'package:json_de_serialisation/food.dart';
import 'package:json_de_serialisation/food_type.dart';

part 'fruit.g.dart';

@JsonSerializable(constructor: "_withType") //Use named constructor to have the default constructor clean for internal use
class Fruit extends Food {
  final double sweetness;

  // A constructor with an explicit field for the "FoodType" is needed for json_annotation to generate code that also uses the type field.
  Fruit._withType(super.type, super.name, super.barcode, super.price, this.sweetness);

  Fruit(String name, String barcode, double price, this.sweetness) : super(FoodType.fruit, name, barcode, price);

  factory Fruit.fromJson(Map<String, dynamic> json) => _$FruitFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FruitToJson(this);

  @override
  List<Object?> get props => super.props..addAll([sweetness]);
}
