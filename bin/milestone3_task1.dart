import 'dart:io';
import 'package:milestone3_task1/meal.dart';
import 'package:milestone3_task1/specials.dart';

void main() {
  final todayMenu = <Meal>[
    Meal("Gyros Pita", 4.50, MealType.mainCourse),
    Meal("Peking Ente deluxekeule", 20.20, MealType.mainCourse),
    Salad("Greek Salad", 3.00, SaladType.greek, false),
    Salad("Vegan Garden Salad", 3.20, SaladType.garden, true),
    Dessert("Chocolate Pudding", 1.50,  DessertType.pudding, true),
    Dessert("Fruit Bowl", 1.80, DessertType.fruit,  false),
    Dessert("Cheese Cake",2.50, DessertType.cake, true)
  ];

  print(" Willkommen zur Mensa Menu App!");

  while (true) {
    print("\nOptionen:");
    print("1 - Zeige das Menü von heute");
    print("2 - Beenden");

    final input = stdin.readLineSync();
    if (input == "1") {
      print(" Heutiges Menü:");
      for (var meal in todayMenu) {
        print(" + ${meal.info()}");
      }
    } else if (input == "2") {
      print("Auf Wiedersehen!");
      break;
    } else {
      print("Ungültige Option.");
    }
  }
}
