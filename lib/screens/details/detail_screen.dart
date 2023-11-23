import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ordering_app/constants.dart';
import 'package:food_ordering_app/screens/details/components/body.dart';
import 'package:food_ordering_app/screens/details/components/details_app_bar.dart';
import 'package:food_ordering_app/screens/details/components/item_image.dart';
import 'package:food_ordering_app/screens/details/components/order_button.dart';
import 'package:food_ordering_app/screens/details/components/title_price_rating.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppBar(context),
      body: Body(),
    );
  }

}
