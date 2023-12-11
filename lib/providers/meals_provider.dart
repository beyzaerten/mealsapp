import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:mealsapp/models/meal.dart";

Provider mealsProvider = Provider((ref) {
  return const [
    Meal(
        id: "1",
        categoryId: "1",
        name: "Mercimek Çorbası",
        imageUrl: "imageUrl",
        ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  ];
});
