import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

Widget poweredText(
    {Color textColor = Colors.white, EdgeInsetsGeometry? padding}) {
  return Padding(
    padding: padding ??
        EdgeInsets.symmetric(
          vertical: height * 0.03,
          horizontal: width * 0.02,
        ),
    child: text(
      'Diseñado y Creado por Servicios Duraderos S. A.',
      textAlign: TextAlign.center,
      color: textColor,
    ),
  );
}
