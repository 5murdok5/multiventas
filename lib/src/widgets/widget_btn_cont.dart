import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class BtnContinuar extends StatelessWidget {
  final Function()? onPressed;
  final String titleBtn;
  final bool disable;
  const BtnContinuar(
      {Key? key, this.onPressed, required this.titleBtn, this.disable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextButton(
        onPressed: disable ? () {} : onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            text(
              titleBtn,
              type: 'title1',
              color: disable ? lIconColor.withAlpha(120) : lIconColor,
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: disable ? lIconColor.withAlpha(120) : lIconColor,
            )
          ],
        ),
      ),
    );
  }
}
