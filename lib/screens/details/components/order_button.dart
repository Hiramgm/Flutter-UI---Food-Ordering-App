import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';

class OrderButton extends StatelessWidget {
  final Function() press;
  const OrderButton({
    super.key,
    required this.size, required this.press,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width*0.8,
      
      decoration: BoxDecoration(
        color: kPrimaryColor,borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/icons/bag.svg"),
                SizedBox(width: 10,),
                Text("Order Now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

