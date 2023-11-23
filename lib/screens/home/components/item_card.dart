import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';

class ItemCard extends StatelessWidget {
  final String title,svgSrc, shopName;
  final Function() press;
  const ItemCard({
    super.key, required this.title, required this.svgSrc, required this.shopName, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
     
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1),
          ),
          
        ]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.13),
                    shape: BoxShape.circle
                  ),
                  child: SvgPicture.asset(svgSrc, width: size.width*0.18,),
                ),
                Text(title),
                SizedBox(height: 10,),
                Text(shopName,style: TextStyle(fontSize: 12),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
