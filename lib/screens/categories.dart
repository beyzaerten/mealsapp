import 'package:flutter/material.dart';
import 'package:mealsapp/data/datas.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meal_list.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  // kategori seçimi yapıldığını anlaması için bu fonksiyon yazılır
  void _selectCategory(BuildContext context, Category category) {
    // stless widgetlarda context sadece build fonksiyonunda olur bu yüzden build context yazdık
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealList(
          meals: meals
              .where((element) => element.categoryId == category.id)
              .toList(),
        ),
      ),
    );
  } // fonksiyonum categories.dartta ancak+

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 218, 97, 255),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Kategoriler',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              for (final category in categories)
                ListTile(
                  title: Text(category.name),
                  onTap: () {
                    Navigator.pop(context);
                    _selectCategory(context, category);
                  },
                ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Kategori seçin"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => const Favorites()),
                      );
                    },
                    icon: const Icon(Icons.favorite)))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.5),
            children: [
              for (final category in categories)
                CategoryCard(
                  category: category,
                  onSelectCategory: () {
                    _selectCategory(context, category);
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
