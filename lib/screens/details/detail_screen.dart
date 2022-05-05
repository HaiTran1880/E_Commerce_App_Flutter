import 'package:e_commmerce_app_flutter/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../size_config.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';
import 'components/rounded_icon_btn.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routeName = '/detail_screen';
  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(
        product: agrs.product,
      ),
    );
  }
}

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({required this.product});
}
