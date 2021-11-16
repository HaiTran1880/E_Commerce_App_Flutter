import 'package:e_commmerce_app_flutter/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commmerce_app_flutter/screens/login_success/login_success.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/sig_in_screen.dart';
import 'package:e_commmerce_app_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SigInScreen.routeName: (context) => const SigInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LogInSuccessScreen.routeName: (context) => const LogInSuccessScreen()
};
