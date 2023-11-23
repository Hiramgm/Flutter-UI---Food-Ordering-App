import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_ordering_app/constants.dart';

class TitlePriceRating extends StatelessWidget {
  final int price,numOfReviews;
  final double rating;
  final String name;
  
  const TitlePriceRating({
    super.key, required this.price, required this.numOfReviews, required this.rating, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(name,
            style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: 10,),
            Row(
              children: [
                RatingBarIndicator(
                  itemSize: 22,
                    rating: rating,
                    itemBuilder: (context, index) => Icon(
                       Icons.star,
                      color: Colors.amber,
                    ),),
                    SizedBox(width: 10,),
                    Text("$numOfReviews reviews",style: TextStyle(color: ksecondaryColor),)
              ],
            )
          ],)),
          priceTag(context,15)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context,int price) {
    return ClipPath(
          clipper: PricerCliper(),
          child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(vertical: 15),
            height: 65,
            width: 65,
            color: kPrimaryColor,
            child: Text("\$$price",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold,color: Colors.white)),
          ),
        );
  }
}


class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

