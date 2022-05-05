import 'package:e_commmerce_app_flutter/screens/cart_screen/cart_screen.dart';
import 'package:e_commmerce_app_flutter/screens/complete_profile_screen/complete_profile_screen.dart';
import 'package:e_commmerce_app_flutter/screens/details/detail_screen.dart';
import 'package:e_commmerce_app_flutter/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commmerce_app_flutter/screens/home/home_screen.dart';
import 'package:e_commmerce_app_flutter/screens/login_success/login_success.dart';
import 'package:e_commmerce_app_flutter/screens/otp_screen/otp_screen.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/sig_in_screen.dart';
import 'package:e_commmerce_app_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:e_commmerce_app_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/profile/profile_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SigInScreen.routeName: (context) => const SigInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LogInSuccessScreen.routeName: (context) => const LogInSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OTPScreen.routeName: (context) => const OTPScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
