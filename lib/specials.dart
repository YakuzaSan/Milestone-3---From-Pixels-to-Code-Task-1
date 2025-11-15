import 'meal.dart';

// Optional: Enum für Desserts
enum DessertType { pudding, fruit, cake }

class Dessert extends Meal {
  final DessertType dessertType;
  final bool containsSugar;

  Dessert(String name, double price, this.dessertType, this.containsSugar )
      : super(name, price, MealType.mainCourse);

  @override
  String info() {
    return "$name – ${price.toStringAsFixed(2)}€ "
        "(Dessert: ${dessertType.name}, Sugar: ${containsSugar ? "yes" : "no"})";
  }
}

// Optional: Enum für Salads
enum SaladType { greek, garden, caesar }

class Salad extends Meal {
  final SaladType saladType;
  final bool isVegan;

  Salad(String name, double price, this.saladType, this.isVegan)
      : super(name, price, MealType.mainCourse);

  @override
  String info() {
    return "$name – ${price.toStringAsFixed(2)}€ "
        "(Salad: ${saladType.name}, Vegan: ${isVegan ? "yes" : "no"})";
  }
}
