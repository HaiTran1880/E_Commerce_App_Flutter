import 'package:e_commmerce_app_flutter/screens/login_success/components/body.dart';
import 'package:flutter/material.dart';

class LogInSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  const LogInSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Login Success",
        style: TextStyle(
            color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
      )),
      body: Body(),
    );
  }
}
