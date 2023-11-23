import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Column(
        children: [
          Text("Offers & Discounts",
          style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),fit: BoxFit.fitWidth)
            ),
            child: DecoratedBox(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: 
            [
              Color(0xFFFFF961F).withOpacity(0.7),
              kPrimaryColor.withOpacity(0.7)
            ])
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(child: SvgPicture.asset("assets/icons/macdonalds.svg")),
                  Expanded(child: RichText(text: 
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Get Discount of \n",
                        style: TextStyle(fontSize: 16)
                      ),
                      TextSpan(
                        text: "30% \n",
                        style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold)
                      ),
                      TextSpan(
                        text: "at MacDonald'son your first order & Instant cashback \n",
                        style: TextStyle(fontSize: 10)
                      )
                    ]
                  )))
                ],
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
