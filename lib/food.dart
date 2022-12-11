import 'package:equatable/equatable.dart';
import 'package:json_de_serialisation/food_type.dart';

abstract class Food extends Equatable {
  final FoodType type;
  final String name;
  final String barcode;
  final double price;

  Food(this.type, this.name, this.barcode, this.price);

  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [type, name, barcode, price];
}
