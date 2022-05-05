import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.black)),
          GestureDetector(
            onTap: press,
            child: Text('See more'),
          )
        ],
      ),
    );
  }
}
