import 'package:e_commmerce_app_flutter/screens/cart_screen/cart_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button_count.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        SearchField(),
        IconBtnCount(
          svgSrc: 'assets/icons/Cart Icon.svg',
          numberOfItems: 0,
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
        ),
        IconBtnCount(
          svgSrc: 'assets/icons/Bell.svg',
          numberOfItems: 10,
          press: () {},
        ),
      ]),
    );
  }
}
