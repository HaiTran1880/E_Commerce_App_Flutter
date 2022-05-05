import 'package:e_commmerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'rounded_icon_btn.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(children: [
        ...List.generate(
            product.colors.length,
            (index) => ColorDot(
                color: product.colors[index],
                isSelected: selectedColor == index)),
        Spacer(),
        RoundedIconBtn(
          iconData: Icons.remove,
          press: () {},
        ),
        SizedBox(
          width: getProportionateScreenWidth(15),
        ),
        RoundedIconBtn(
          iconData: Icons.add,
          press: () {},
        ),
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 20),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
            // color:product.colors[0],
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
