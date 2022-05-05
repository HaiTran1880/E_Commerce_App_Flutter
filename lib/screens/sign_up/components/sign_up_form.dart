import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/screens/complete_profile_screen/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String conform_password;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          onSaved: (newValue) => email = newValue!,
          onChanged: (value) => {
            if (value.isNotEmpty && errors.contains(kEmailNullError))
              {
                setState(() {
                  errors.remove(kEmailNullError);
                })
              }
            else if (emailValidatorRegExp.hasMatch(value) &&
                errors.contains(kInvalidEmailError))
              {
                setState(() {
                  errors.remove(kInvalidEmailError);
                })
              }
          },
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kEmailNullError)) {
              setState(() {
                errors.add(kEmailNullError);
              });
            } else if (!emailValidatorRegExp.hasMatch(value) &&
                !errors.contains(kInvalidEmailError)) {
              setState(() {
                errors.add(kInvalidEmailError);
              });
            }
          },
          decoration: const InputDecoration(
              hintText: "Enter your email",
              labelText: "Email",
              focusColor: Colors.amber,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.mail)),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue!,
          onChanged: (value) => {
            if (value.isNotEmpty && errors.contains(kPassNullError))
              {
                setState(() {
                  errors.remove(kPassNullError);
                })
              }
            else if (value.length >= 8 && errors.contains(kShortPassError))
              {
                setState(() {
                  errors.remove(kShortPassError);
                })
              }
          },
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
            } else if (value.length < 8 && !errors.contains(kShortPassError)) {
              setState(() {
                errors.add(kShortPassError);
              });
            }
          },
          decoration: const InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.lock)),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextFormField(
          obscureText: true,
          onSaved: (newValue) => password = newValue!,
          onChanged: (value) => {
            if (value.isNotEmpty && errors.contains(kPassNullError))
              {
                setState(() {
                  errors.remove(kPassNullError);
                })
              }
            else if (value.length >= 8 && errors.contains(kShortPassError))
              {
                setState(() {
                  errors.remove(kShortPassError);
                })
              }
          },
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value!.isEmpty && !errors.contains(kPassNullError)) {
              setState(() {
                errors.add(kPassNullError);
              });
            } else if (value.length < 8 && !errors.contains(kShortPassError)) {
              setState(() {
                errors.add(kShortPassError);
              });
            }
          },
          decoration: const InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: Icon(Icons.lock)),
        ),
        SizedBox(height: getProportionateScreenHeight(40)),
        DefaultButton(
            text: 'Continue',
            press: () {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            })
      ],
    ));
  }
}
