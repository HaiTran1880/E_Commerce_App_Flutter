import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text(
              'OTP Verificaction',
              style: headingStyle,
            ),
            Text('We sent you code to +1 989 860 ***'),
            buildTimer(),
            OtpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            GestureDetector(
              onTap: () {},
              child: Text('Resend OTP Code',
                  style: TextStyle(decoration: TextDecoration.underline)),
            )
          ],
        ),
      ),
    );
  }
}

Row buildTimer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('This code will expired in'),
      TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
                "00:${value.toInt()}",
                style: TextStyle(color: kPrimaryColor),
              ))
    ],
  );
}
