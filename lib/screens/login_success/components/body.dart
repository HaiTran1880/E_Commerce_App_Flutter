import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/screens/home/home_screen.dart';
import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        const Spacer(),
        const Text('LogIn Success',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30)),
        const Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth * 0.5,
            child: DefaultButton(
                text: "Back to Home",
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                })),
        const Spacer()
      ],
    );
  }
}
