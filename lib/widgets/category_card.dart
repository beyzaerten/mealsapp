import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {Key? key, required this.category, required this.onSelectCategory})
      : super(key: key);

  final Category category;
  final void Function() onSelectCategory; // callback function

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      onTap: () => {
        onSelectCategory()
      }, // + tıklama işlemi burda oluyor bu yüzden callback funtion kullanacağız
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.5),
                category.color.withOpacity(1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight), // gradientin şeklini belli eder
        ),
        child: Text(category.name),
      ),
    );
  }
}
