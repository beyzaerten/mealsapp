import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/models/meal.dart';

const categories = [
  Category(id: "1", name: "Başlangıçlar", color: Colors.blue),
  Category(id: "2", name: "Ara Sıcaklar", color: Colors.yellow),
  Category(id: "3", name: "Ana Yemekler", color: Colors.pinkAccent),
  Category(id: "4", name: "Tatlılar", color: Colors.purpleAccent),
];

const meals = [
  Meal(
      id: "1",
      categoryId: "1",
      name: "Mercimek Çorbası",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Şekerpare",
      imageUrl: "imageUrl",
      ingredients: ["Malzeme 1", "Malzeme 2", "Malzeme 3"]),
];
