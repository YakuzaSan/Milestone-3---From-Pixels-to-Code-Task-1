import 'meal.dart';

// Optional: Enum für Desserts
enum DessertType { pudding, fruit, cake }

class Dessert extends Meal {
  final DessertType dessertType;
  final bool containsSugar;

  Dessert(String name, double price, this.dessertType, this.containsSugar )
      : super(name, price, MealType.dessert);

  @override
  String info() {
    return "${super.info()} (Dessert: ${dessertType.name}, Sugar: ${containsSugar ? "yes" : "no"})";
  }

}

enum SaladType { greek, garden, caesar }

class Salad extends Meal {
  final SaladType saladType;
  final bool isVegan;

  Salad(String name, double price, this.saladType, this.isVegan)
      : super(name, price, MealType.salad);

  @override
  String info() {
    return "${super.info()} (Salad: ${saladType.name}, Vegan: ${isVegan ? "yes" : "no"})";
  }

}
