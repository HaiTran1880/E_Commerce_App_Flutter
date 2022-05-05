import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/sig_in_screen.dart';
import 'package:e_commmerce_app_flutter/screens/sign_up/sign_up_screen.dart';
import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              const Text("Forgot Password",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: getProportionateScreenHeight(10)),
              const Text(
                "Please enter your email and we will send \n you a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(100)),
              TextFormField(
                // onSaved: (newValue) => email = newValue!,
                // onChanged: (value) => {
                //   if (value.isNotEmpty && errors.contains(kEmailNullError))
                //     {
                //       setState(() {
                //         errors.remove(kEmailNullError);
                //       })
                //     }
                //   else if (emailValidatorRegExp.hasMatch(value) &&
                //       errors.contains(kInvalidEmailError))
                //     {
                //       setState(() {
                //         errors.remove(kInvalidEmailError);
                //       })
                //     }
                // },
                keyboardType: TextInputType.emailAddress,
                // validator: (value) {
                //   if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                //     setState(() {
                //       errors.add(kEmailNullError);
                //     });
                //   } else if (!emailValidatorRegExp.hasMatch(value) &&
                //       !errors.contains(kInvalidEmailError)) {
                //     setState(() {
                //       errors.add(kInvalidEmailError);
                //     });
                //   }
                // },
                decoration: const InputDecoration(
                    hintText: "Enter your email",
                    labelText: "Email",
                    focusColor: Colors.amber,
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Icon(Icons.mail)),
              ),
              SizedBox(height: getProportionateScreenHeight(100)),
              DefaultButton(text: "Continue", press: () {}),
              SizedBox(height: getProportionateScreenHeight(100)),
              SignUp(context)
            ],
          ),
        ),
      ),
    );
  }
}

Row SignUp(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?", style: TextStyle(fontSize: 15)),
      TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
        ),
        onPressed: () {
          Navigator.pushNamed(context, SignUpScreen.routeName);
        },
        child: const Text(
          'Sign up',
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
    ],
  );
}
