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
      imageUrl: "assets/merco.jpg",
      ingredients: [
        "1 su bardağı kırmızı mercimek",
        "1 adet soğan",
        "1 yemek kaşığı domates salçası",
        "1 tatlı kaşığı kırmızı tatlı toz biber",
        "3-4 yemek kaşığı zeytinyağ",
        "5 su bardağı su",
        "Tuz, pul biber, kekik"
      ]),
  Meal(
      id: "2",
      categoryId: "4",
      name: "Şekerpare",
      imageUrl: "assets/sekerpare.jpg",
      ingredients: [
        "250 gram tereyağı",
        "2 çay bardağı irmik",
        "2 adet yumurta",
        "Yarım çay kaşığı kabartma tozu",
        "Yarım çay kaşığı karbonat",
        "1,5 çay bardağı pudra şekeri",
        "1 paket vanilya",
        "3 su bardağı un"
      ]),
  Meal(
      id: "3",
      categoryId: "2",
      name: "Kabak Graten",
      imageUrl: "assets/kabakgraten.jpg",
      ingredients: [
        "3 adet orta boy kabak",
        "2 tutam dereotu",
        "Zeytinyağı",
        "2 yemek kaşığı tereyağı",
        "2 yemek kaşığı un",
        "1,5 su bardağı süt",
        "Tuz, karabiber"
      ]),
  Meal(
      id: "4",
      categoryId: "3",
      name: "Patlıcan Kebabı",
      imageUrl: "assets/patlican.jpg",
      ingredients: [
        "500 gr kemiksiz koyun ya da dana eti",
        "1 kg patlıcan",
        "Yarım kg domates",
        "Yarım demet kıyılmış maydanoz",
        "Yarım bardak zeytinyağı",
        "1 çorba kaşığı margarin ya da tereyağı",
        "Yeteri kadar et suyu",
        "Tuz ve karabiber"
      ]),
];
