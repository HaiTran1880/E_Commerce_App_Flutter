import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:e_commmerce_app_flutter/route.dart';

import 'package:e_commmerce_app_flutter/screens/splash/splash_screen.dart';
import 'package:e_commmerce_app_flutter/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
