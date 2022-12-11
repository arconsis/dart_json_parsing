import 'package:json_annotation/json_annotation.dart';
import 'package:json_de_serialisation/food.dart';
import 'package:json_de_serialisation/food_type.dart';

part 'meat.g.dart';

@JsonSerializable(constructor: "_withType")
class Meat extends Food {
  final String animal;
  final bool isRedMeat;

  Meat._withType(super.type, super.name, super.barcode, super.price, this.animal, this.isRedMeat);

  Meat(String name, String barcode, double price, this.animal, this.isRedMeat) : super(FoodType.meat, name, barcode, price);

  factory Meat.fromJson(Map<String, dynamic> json) => _$MeatFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MeatToJson(this);

  @override
  List<Object?> get props => super.props..addAll([animal, isRedMeat]);
}
