enum FoodType {
  unknown,
  fruit,
  meat;

  static FoodType fromString(String typeName) => FoodType.values.singleWhere((foodType) => foodType.name == typeName, orElse: () => FoodType.unknown);
}
