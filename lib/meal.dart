enum MealType { mainCourse}

class Meal {
  final String name;
  final double price;
  final MealType type;

  Meal(this.name, this.price, this.type);

  String info() {
    return "$name – ${price.toStringAsFixed(2)}€ (${type.name})";
  }
}
