import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';

/// Widget de text general para toda la app
/// types for textStyle : title - title2 - subtitle - body1 - body2
Widget text(
  String text, {
  String type = 'body',
  Color? color,
  double? size,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  int? maxLines,
  EdgeInsetsGeometry padding = const EdgeInsets.all(0),
}) {
  return Padding(
    padding: padding,
    child: Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: getTypeTest(
        type,
        addStyle: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight,
        ),
      ),
    ),
  );
}

TextStyle? getTypeTest(String value, {TextStyle? addStyle}) {
  switch (value) {
    case 'title':
      return theme.textTheme.headline1!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
    case 'title2':
      return theme.textTheme.headline2!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
    case 'subtitle':
      return theme.textTheme.subtitle1!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
    case 'body':
      return theme.textTheme.bodyText1!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
    case 'body2':
      return theme.textTheme.bodyText2!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
    default:
      return theme.textTheme.bodyText2!.copyWith(
        color: addStyle?.color,
        fontSize: addStyle?.fontSize,
        fontWeight: addStyle?.fontWeight,
      );
  }
}
