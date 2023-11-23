import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/home/home_screen.dart';

 AppBar DetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(icon:Icon(Icons.arrow_back), onPressed: () {   
         Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              ); },),
      actions: [
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/share.svg")),
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/more.svg"))
      ],
    );
  }
