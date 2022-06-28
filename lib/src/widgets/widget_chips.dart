import 'package:flutter/material.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class CtChips extends StatelessWidget {
  final Color? colorChip;
  final String? textChip;
  const CtChips({Key? key, this.colorChip = Colors.grey, this.textChip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CtCard(
      borderColor: colorChip,
      margin: const EdgeInsets.only(top: 5),
      showborder: true,
      color: Colors.transparent,
      radius: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      widthborder: 1.5,
      child: text(
        textChip ?? 'chip text',
        type: 'body',
        color: colorChip,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
