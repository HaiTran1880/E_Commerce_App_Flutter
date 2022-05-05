import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/components/social_sigin.dart';
import 'package:e_commmerce_app_flutter/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Text("Register Account", style: headingStyle),
            Text(
              "Complete your details or continue \nwidth social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight * 0.08),
            Row(
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
            ),
            SizedBox(width: getProportionateScreenHeight(30)),
            Text(
              'By continuing your confirm that you agree \n with our Term and Condition',
              textAlign: TextAlign.center,
            ),
          ],
        )),
      ),
    );
  }
}
