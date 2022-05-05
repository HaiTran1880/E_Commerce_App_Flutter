import 'package:e_commmerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.aspectRatio = 1.02,
    required this.product,
    this.width = 140,
    required this.press,
  }) : super(key: key);
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(140),
          child: Column(
            children: [
              SizedBox(
                width: getProportionateScreenWidth(width),
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: aspectRatio,
                      child: Container(
                        padding:
                            EdgeInsets.all(getProportionateScreenWidth(20)),
                        decoration: BoxDecoration(
                          color: kSecondaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(product.images[0]),
                      ),
                    ),
                    Text(
                      product.title,
                      style: TextStyle(color: Colors.black),
                      maxLines: 2,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${product.price}',
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: getProportionateScreenWidth(10)),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(30),
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(
                                    getProportionateScreenWidth(8)),
                                width: getProportionateScreenWidth(28),
                                height: getProportionateScreenWidth(28),
                                decoration: BoxDecoration(
                                    color: product.isFavourite
                                        ? kPrimaryColor.withOpacity(0.15)
                                        : kPrimaryColor.withOpacity(0.1),
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  'assets/icons/Heart Icon_2.svg',
                                  color: product.isFavourite
                                      ? Colors.red
                                      : Colors.grey,
                                ),
                              ),
                            ),
                          )
                        ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
