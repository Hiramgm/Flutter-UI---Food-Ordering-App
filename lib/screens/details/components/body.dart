import 'package:flutter/material.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/details/components/item_image.dart';
import 'package:food_ordering_app/screens/details/components/order_button.dart';
import 'package:food_ordering_app/screens/details/components/title_price_rating.dart';


class Body extends StatelessWidget {

  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(src: "assets/images/burger.png",),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        color: Colors.white
      ),
      child: Column(
        children: [
          shopName("MacDonald's"),
          TitlePriceRating(name: "Cheese Burger", price: 15,rating: 2,numOfReviews: 23,),
          Text("A cheeseburger is a hamburger with a slice of melted cheese on top of the meat patty. Cheeseburgers can also include other ingredients and toppings, such as condiments and lettuce.", style: TextStyle(color: ksecondaryColor,height: 1.5),),
         SizedBox(height: size.height*0.1,),
         OrderButton(size: size,press:(){})
        ],
      ),
    );
  }

  Row shopName(String name) {
    return Row(
          children: [
            Icon(Icons.location_on,color: ksecondaryColor,),
            SizedBox(width: 10,),
            Text(name,style: TextStyle(color: ksecondaryColor),)
          ],
        );
  }
}

