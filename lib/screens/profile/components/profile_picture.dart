import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(fit: StackFit.expand, overflow: Overflow.visible, children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/Profile Image.png'),
        ),
        Positioned(
          bottom: 0,
          right: -10,
          child: SizedBox(
            height: 46,
            width: 46,
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: SvgPicture.asset('assets/icons/Camera Icon.svg')),
          ),
        ),
      ]),
    );
  }
}
