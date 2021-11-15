import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Text("Forgot Password",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: getProportionateScreenHeight(10)),
          Text(
            "Please enter your email and we will send \n you a link to return to your account",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
