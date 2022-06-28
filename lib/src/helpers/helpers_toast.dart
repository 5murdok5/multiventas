import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_load.dart';

closeCurrentSnack() => ScaffoldMessenger.of(ctx!).hideCurrentSnackBar();

toast(
  String text, {
  String type = 'info',
  String? textBtnAction,
  Function()? ontapAction,
  int timeVisible = 2100,
  bool showClosebtn = false,
  bool showLoad = false,
}) {
  ScaffoldMessenger.of(ctx!).clearSnackBars();

  final color = types(type);
  SnackBarAction? action = ontapAction != null
      ? SnackBarAction(
          label: 'tap',
          onPressed: ontapAction,
          textColor: color['text'],
        )
      : null;

  final snackBar = SnackBar(
    content: Row(
      children: [
        if (showLoad)
          loadwidget(
            size: 22,
            padding: const EdgeInsets.only(right: 15),
            colorIndicator: color['text'],
          ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: color['text'],
            ),
          ),
        ),
        if (showClosebtn)
          InkWell(
            onTap: closeCurrentSnack,
            child: CircleAvatar(
              backgroundColor: color['text'],
              maxRadius: 14,
              child: Icon(
                Icons.close,
                color: color['color'],
                size: 17,
              ),
            ),
          )
      ],
    ),
    action: action,
    dismissDirection: showLoad ? DismissDirection.none : DismissDirection.down,
    backgroundColor: color['color'],
    duration: Duration(
      milliseconds: showLoad ? 9999999999999 : timeVisible,
    ),
  );

  return ScaffoldMessenger.of(ctx!).showSnackBar(snackBar);
}

Map<String, Color> types(type) {
  int alphaColor = 200;
  switch (type) {
    case 'error':
      return {
        'color': Colors.redAccent.withAlpha(alphaColor + 10),
        'text': const Color.fromARGB(255, 255, 255, 255),
      };
    case 'info':
      return {
        'color': lSecondaryColor.withAlpha(alphaColor + 20),
        'text': const Color.fromARGB(255, 255, 255, 255),
      };
    case 'warning':
      return {
        'color': lPrimaryColor.withAlpha(alphaColor),
        'text': const Color.fromARGB(255, 255, 255, 255),
      };
    case 'alert':
      return {
        'color': lAlertColor.withAlpha(alphaColor),
        'text': lText.withAlpha(253),
      };
    default:
      return {
        'color': Colors.black.withAlpha(alphaColor),
        'text': Colors.white,
      };
  }
}
