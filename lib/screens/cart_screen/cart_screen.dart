import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/models/Cart.dart';
import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
        children: [
          Text(
            'Your cart',
            style: TextStyle(color: Colors.black),
          ),
          Text('${demoCarts.length} items',
              style: Theme.of(context).textTheme.caption)
        ],
      )),
      body: Body(),
      bottomNavigationBar: CheckOutCart(),
    );
  }
}

class CheckOutCart extends StatelessWidget {
  const CheckOutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenWidth(30)),
      height: 174,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15)),
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Container(
                height: getProportionateScreenWidth(40),
                width: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset('assets/icons/receipt.svg'),
              ),
              Spacer(),
              Text('Add voucher code'),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward_ios, size: 12, color: kTextColor),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text.rich(
                TextSpan(text: 'Total:\n', children: [
                  TextSpan(
                      text: '\$337.15',
                      style: TextStyle(fontSize: 16, color: Colors.black))
                ]),
              ),
              SizedBox(
                width: getProportionateScreenWidth(190),
                child: DefaultButton(text: 'Check Out', press: () {}),
              )
            ])
          ],
        ),
      ),
    );
  }
}
