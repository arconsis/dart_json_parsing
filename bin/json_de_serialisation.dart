import 'package:equatable/equatable.dart';
import 'package:json_de_serialisation/basket.dart';
import 'package:json_de_serialisation/fruit.dart';
import 'package:json_de_serialisation/meat.dart';

void main(List<String> arguments) {
  EquatableConfig.stringify = true;

  final basket = Basket([
    Fruit("Apple", "123apple456", 0.99, 5.3),
    Meat("Chicken Wings", "123wings456", 7.99, "Chicken", false),
  ]);
  print("Object for conversion: $basket");

  final json = basket.toJson();
  print("JSON sent to the server and received from the server: $json");

  final basketFromRESTAPI = Basket.fromJson(json);
  print("Object created from JSON: $basketFromRESTAPI");
}
