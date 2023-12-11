// dynamic state notifier provider

// iki adet yapı

// notifier
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';

// notifier bile olsa providerın default bir değeri olmalı : initial state
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]); // initial state belirleme

  void toggleMealFavorite(Meal meal) {
    // state is immutable yani değişmez sabit
    // statein değişmesi için replace edeceğiz yani statei farklı bir statele yeriini değiştireceğiz
    if (state.contains(meal)) {
      final newState = state.where((element) => element.id != meal.id).toList();
      state = newState;
    } else {
      final newState = [...state, meal];
      state = newState;
    }
  }
}

// provider
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) {
  return FavoriteMealsNotifier();
});

// boilerplate code
