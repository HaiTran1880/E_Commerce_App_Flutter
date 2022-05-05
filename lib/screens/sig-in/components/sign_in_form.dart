import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/constants.dart';
import 'package:e_commmerce_app_flutter/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:e_commmerce_app_flutter/screens/login_success/login_success.dart';
import 'package:e_commmerce_app_flutter/screens/sig-in/sig_in_screen.dart';
import 'package:e_commmerce_app_flutter/size_config.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  bool isRemember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
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
            SizedBox(height: getProportionateScreenHeight(20)),
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
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
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
            SizedBox(height: getProportionateScreenHeight(10)),
            Column(
              children: List.generate(
                  errors.length, (index) => formError(errors[index])),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Checkbox(
                        activeColor: kPrimaryColor,
                        value: isRemember,
                        onChanged: (value) => {
                              setState(() {
                                isRemember = value!;
                              })
                            }),
                    const Text("Remember me"),
                  ],
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, ForgotPasswordScreen.routeName)
                  },
                  child: const Text("Forgot Password",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: kPrimaryColor)),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            DefaultButton(
                text: "Continue",
                press: () => {
                      if (_formKey.currentState!.validate())
                        {
                          _formKey.currentState!.save(),
                          Navigator.pushNamed(
                              context, LogInSuccessScreen.routeName)
                        }
                    }),
          ],
        ));
  }
}
