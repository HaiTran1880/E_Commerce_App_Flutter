import 'package:e_commmerce_app_flutter/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:e_commmerce_app_flutter/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_button_count.dart';
import 'popular_product.dart';
import 'search_field.dart';
import 'section_title.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DiscountBanner(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Categories(),
          SizedBox(height: getProportionateScreenHeight(30)),
          SpecialOffers(),
          SizedBox(height: getProportionateScreenHeight(30)),
          PopularProducts(),
          SizedBox(height: getProportionateScreenHeight(30)),
        ],
      )),
    );
  }
}

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Smart phones',
                image: 'assets/images/Image Banner 2.png',
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                category: 'Fashion',
                image: 'assets/images/Image Banner 3.png',
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}
