import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool? isActive;
  final Function() press;
  const CategoryItem({
    super.key, required this.title, this.isActive, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Text(title,
            style: isActive! ? TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.bold
            ): TextStyle(fontSize: 12),),
            if (isActive!) Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 3,
              width: 22,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
            )
          ],
        ),
      ),
    );
  }
}
