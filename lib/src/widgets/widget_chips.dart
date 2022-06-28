import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_card.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class CtChips extends StatelessWidget {
  final Color? colorChip;
  final String? textChip;
  const CtChips({Key? key, this.colorChip = Colors.grey, this.textChip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CtCard(
      borderColor: colorChip,
      margin: const EdgeInsets.only(top: 7),
      showborder: true,
      color: Colors.transparent,
      radius: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 5,
      ),
      widthborder: 1.5,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          text(
            textChip ?? 'chip text',
            type: 'body',
            color: colorChip,
            fontWeight: FontWeight.w600,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: CircleAvatar(
              maxRadius: 10,
              backgroundColor: colorChip!.withAlpha(240),
              child: Icon(
                Icons.close,
                size: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
