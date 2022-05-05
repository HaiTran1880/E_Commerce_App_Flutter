import 'package:e_commmerce_app_flutter/components/custom_surfix_icon.dart';
import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/screens/complete_profile_screen/components/complete_profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
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
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \n with social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              CompleteProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
