import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(title: "Combo Meal",isActive: true, press: (){},),
          CategoryItem(title: "Beverages",isActive: false, press: (){},),
          CategoryItem(title: "Chicken",isActive: false, press: (){},),
          CategoryItem(title: "Snacks & Sliders",isActive: false, press: (){},)
        ],
      ),
    );
  }
}