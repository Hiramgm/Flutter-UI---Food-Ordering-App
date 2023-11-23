import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String src;
  const ItemImage({
    super.key, required this.src,
   
  });


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    return Image.asset(src,
    height: size.height*0.25 ,
    width: double.infinity,
    fit: BoxFit.fitWidth,);
  }
}