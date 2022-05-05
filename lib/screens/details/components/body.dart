import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'color_dots.dart';
import 'product_decription.dart';
import 'product_image.dart';
import 'rounded_icon_btn.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundContainer(
          color: Colors.white,
          child: Column(children: [
            ProductionDecription(product: product, pressSeeMore: () {}),
            TopRoundContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(15)),
                          child: DefaultButton(
                            text: 'Add to Cart',
                            press: () {},
                          ),
                        ))
                  ],
                )),
          ]),
        )
      ],
    );
  }
}
