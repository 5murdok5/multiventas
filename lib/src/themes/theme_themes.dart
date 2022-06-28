import 'package:flutter/material.dart';

// THEME LIGTH COLORS
const Color lScafoldColor = Color(0xFFF9F9F9);
const Color lLightColor = Color.fromARGB(255, 250, 250, 250);
const Color lPrimaryColor = Color(0xFFFD6B22);
const Color lAlertColor = Color.fromARGB(255, 253, 202, 34);
const Color lSecondaryColor = Color(0xFF353846);
const Color lIconColor = Color(0xFF353846);
const Color lText = Color(0xFF353846);
//  const Color lSecondaryColor = Color(0xFF353846);
//  const Color lSecondaryColorlight = Color.fromARGB(255, 78, 83, 107);
//  const Color lScafoldColor = Color(0xFFFFFFFF);

//  const Color lGreyColor1 = Color.fromARGB(120, 53, 56, 70);
// THEME DARK
const Color dkScafoldColor = Color(0xFF5B5B5B);

class Themes {
  static const TextStyle headline1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 21,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle headline2 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subtitle1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyText2 = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  setThemeLight() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: lScafoldColor,
      brightness: Brightness.light,
      fontFamily: 'Montserrat',
      textTheme: TextTheme(
        headline1: headline1.copyWith(
          color: lText,
        ),
        headline2: headline2.copyWith(
          color: lText,
        ),
        subtitle1: subtitle1.copyWith(
          color: lText,
        ),
        bodyText1: bodyText1.copyWith(
          color: lText,
        ),
        bodyText2: bodyText2.copyWith(
          color: lText,
        ),
      ),
    );
  }

  setThemeDark() {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: dkScafoldColor,
      brightness: Brightness.dark,
      fontFamily: 'Montserrat',
      textTheme: TextTheme(
        headline1: headline1.copyWith(
          color: lText,
        ),
        headline2: headline2.copyWith(
          color: lText,
        ),
        subtitle1: subtitle1.copyWith(
          color: lText,
        ),
        bodyText1: bodyText1.copyWith(
          color: lText,
        ),
        bodyText2: bodyText2.copyWith(
          color: lText,
        ),
      ),
    );
  }
}
