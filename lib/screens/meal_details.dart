import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

// Stateful widget => ConsumerStatefulWidget
// State => ConsumerState

class MealDetails extends ConsumerStatefulWidget {
  const MealDetails({Key? key, required this.meal}) : super(key: key);
  final Meal meal;

  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends ConsumerState<MealDetails> {
  @override
  Widget build(BuildContext context) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.meal.name),
          actions: [
            IconButton(
                onPressed: () {
                  ref
                      .read(favoriteMealsProvider.notifier)
                      .toggleMealFavorite(widget.meal);
                },
                icon: Icon(favoriteMeals.contains(widget.meal)
                    ? Icons.favorite
                    : Icons.favorite_border))
          ],
        ),
        body: Column(
          children: [
            Image.asset(widget.meal.imageUrl),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "İçindekiler",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            for (String ingredient in widget.meal.ingredients)
              Text(
                ingredient,
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
          ],
        ));
  }
}
