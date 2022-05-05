import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePicture(),
        SizedBox(height: 20),
        ProfileMenu(
            text: 'My Account',
            press: () {},
            icon: 'assets/icons/User Icon.svg'),
        ProfileMenu(
            text: 'Notifications', press: () {}, icon: 'assets/icons/Bell.svg'),
        ProfileMenu(
            text: 'Settings', press: () {}, icon: 'assets/icons/Settings.svg'),
        ProfileMenu(
            text: 'Help Center',
            press: () {},
            icon: 'assets/icons/User Icon.svg'),
        ProfileMenu(
            text: 'Log Out', press: () {}, icon: 'assets/icons/Log out.svg')
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color(0xFFF5F6F9),
          onPressed: press,
          child: Row(children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(Icons.arrow_forward_ios)
          ])),
    );
  }
}
