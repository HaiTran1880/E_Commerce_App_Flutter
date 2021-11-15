import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialSigIn extends StatelessWidget {
  const SocialSigIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          icon: "assets/icons/google-icon.svg",
          press: () => {print("Google")},
        ),
        SizedBox(width: getProportionateScreenHeight(20)),
        SocialButton(
          icon: "assets/icons/facebook-2.svg",
          press: () => {print("Facebook")},
        ),
        SizedBox(width: getProportionateScreenHeight(20)),
        SocialButton(
          icon: "assets/icons/twitter.svg",
          press: () => {print("Twitter")},
        )
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: const Color(0xFFF5F6F9)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        child: FittedBox(fit: BoxFit.contain, child: SvgPicture.asset(icon)),
      ),
    );
  }
}
