import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class WdSocialLg extends StatelessWidget {
  const WdSocialLg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        text(
          '~ o Atraves de ~',
          padding: const EdgeInsets.only(top: 25, bottom: 30),
        ),
        socials(),
      ],
    );
  }

  Widget socials() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        contBtns(
          const FaIcon(
            FontAwesomeIcons.google,
            size: 30,
            color: Colors.white,
          ),
          color: lPrimaryColor,
        ),
        contBtns(
          const FaIcon(
            FontAwesomeIcons.facebookF,
            size: 30,
            color: Colors.white,
          ),
          color: lSecondaryColor,
        ),
      ],
    );
  }

  Widget contBtns(FaIcon icon, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: CircleAvatar(
        backgroundColor: color,
        maxRadius: 28,
        child: icon,
      ),
    );
  }
}
