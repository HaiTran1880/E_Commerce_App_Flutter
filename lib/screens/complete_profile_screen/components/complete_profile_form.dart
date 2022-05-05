import 'package:e_commmerce_app_flutter/components/custom_surfix_icon.dart';
import 'package:e_commmerce_app_flutter/components/default_button.dart';
import 'package:e_commmerce_app_flutter/screens/otp_screen/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;
  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => firstName = newValue!,
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
                hintText: "Enter your first name",
                labelText: "First name",
                focusColor: Colors.amber,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg')),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => lastName = newValue!,
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
                hintText: "Enter your last name",
                labelText: "Last name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg')),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => phoneNumber = newValue!,
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
            keyboardType: TextInputType.number,
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
                hintText: "Enter your phone number",
                labelText: "Phone number",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon:
                    CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg')),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => address = newValue!,
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
                hintText: "Enter your address",
                labelText: "Address",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                    svgIcon: 'assets/icons/Location point.svg')),
          ),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
              text: 'Continue',
              press: () {
                Navigator.pushNamed(context, OTPScreen.routeName);
              })
        ],
      ),
    );
  }
}
