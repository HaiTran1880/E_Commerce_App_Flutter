import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/components/sign_in_form.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/components/social_sigin.dart';
import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SigInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: getProportionateScreenHeight(50)),
                  Text("Welcome Back",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const Text(
                    "Sign in with your email and password \nor continue with social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(50)),
                  const SignForm(),
                  SizedBox(height: getProportionateScreenHeight(50)),
                  const SocialSigIn(),
                  SignUp(),
                ],
              ),
            ),
          ),
        ));
  }

  Row SignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?", style: TextStyle(fontSize: 15)),
        const SizedBox(
          width: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: () {},
          child: const Text(
            'Sign up',
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)),
      title: const Text("Sign In",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
    );
  }
}

Container formError(String error) {
  return Container(
    margin: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
    child: Row(
      children: [
        SvgPicture.asset('assets/icons/Error.svg',
            height: getProportionateScreenHeight(14),
            width: getProportionateScreenWidth(14)),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    ),
  );
}
