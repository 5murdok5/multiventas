import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';

class WdQualitify extends StatelessWidget {
  final int numOn;
  final double sizeIcon;

  const WdQualitify({Key? key, this.numOn = 3, this.sizeIcon = 18})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => FaIcon(
          numOn <= index ? FontAwesomeIcons.star : FontAwesomeIcons.solidStar,
          color: lPrimaryColor,
          size: sizeIcon,
        ),
      ),
    );
  }
}
