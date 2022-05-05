import 'package:e_commmerce_app_flutter/components/product_card.dart';
import 'package:e_commmerce_app_flutter/models/Product.dart';
import 'package:e_commmerce_app_flutter/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SectionTile(text: 'Popular Product', press: () {}),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ...List.generate(demoProducts.length, (index) {
            if (demoProducts[index].isPopular) {
              return ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                      context, DetailScreen.routeName,
                      arguments: ProductDetailArguments(
                          product: demoProducts[index])));
            }
            ;
            return SizedBox.shrink();
          }),
          SizedBox(width: getProportionateScreenWidth(30)),
        ]),
      ),
    ]);
  }
}
