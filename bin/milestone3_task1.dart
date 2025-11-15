import 'dart:io';
import 'package:milestone3_task1/meal.dart';
import 'package:milestone3_task1/specials.dart';

void main() {
  final todayMenu = <Meal>[
    Meal("Schnitzel mit Pommes", 4.50, MealType.mainCourse),
    Meal("Spaghetti Bolognese", 4.20, MealType.mainCourse),
    Salad("Greek Salad", 3.00, saladType: SaladType.greek, isVegan: false),
    Salad("Vegan Garden Salad", 3.20, saladType: SaladType.garden, isVegan: true),
    Dessert("Chocolate Pudding", 1.50, dessertType: DessertType.pudding),
    Dessert("Fruit Bowl", 1.80, dessertType: DessertType.fruit, containsSugar: false),
  ];

  print("📅 Willkommen zur Mensa Menu App!");

  while (true) {
    print("\nOptionen:");
    print("1 - Zeige das Menü von heute");
    print("2 - Beenden");

    stdout.write("> ");
    final input = stdin.readLineSync();

    if (input == "1") {
      print("\n🍽 Heutiges Menü:");
      for (var meal in todayMenu) {
        print(" - ${meal.info()}");
      }
    } else if (input == "2") {
      print("Auf Wiedersehen!");
      break;
    } else {
      print("Ungültige Option.");
    }
  }
}
