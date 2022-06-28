import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class CtAppBar extends StatelessWidget {
  final String title;
  const CtAppBar({Key? key, this.title = 'title'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddApp - 12,
          vertical: 7,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => back(),
              icon: const Icon(
                Icons.chevron_left_rounded,
                color: lPrimaryColor,
              ),
            ),
            text(
              title,
              type: 'title1',
            ),
          ],
        ),
      ),
    );
  }
}
