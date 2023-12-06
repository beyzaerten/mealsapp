import 'package:flutter/material.dart';
import 'package:mealsapp/models/meal.dart';

class MealList extends StatelessWidget {
  const MealList({Key? key, required this.meals}) : super(key: key);

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    // Widget widget =

    return Scaffold(
      appBar: AppBar(
        title: const Text("Yemek Listesi"),
      ),
      body: meals.isNotEmpty
          ? ListView.builder(
              itemCount: meals.length,
              itemBuilder: (ctx, index) => Text(meals[index].name),
            )
          : const Center(
              child: Text("Bu kategoride hiçbir içerik bulunmamaktadır.")),
    );
  }
}
