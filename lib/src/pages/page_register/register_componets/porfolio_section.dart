import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_button.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_card.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_overlay.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class ProfolioSection extends StatelessWidget {
  const ProfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: OverlayCont(
        widget: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: paddApp + 5,
          ),
          child: Column(
            children: [
              titleSection(),
              const SizedBox(
                height: 30,
              ),
              gridViewSecion(),
              aceptPolices(),
              infoToast(),
              Button(
                textbtn: 'Registarse',
                margin: EdgeInsets.symmetric(
                  horizontal: paddApp,
                  vertical: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget gridViewSecion() {
    return Column(
      children: [
        columSection(),
        columSection(),
        columSection(),
      ],
    );
  }

  Widget columSection() {
    return Row(
      children: [
        Expanded(child: gridCard()),
        Expanded(child: gridCard()),
        Expanded(child: gridCard()),
      ],
    );
  }

  Widget gridCard() {
    return CtCard(
      height: 100,
      margin: const EdgeInsets.all(
        5,
      ),
      borderColor: Colors.grey[300],
      showborder: true,
      widthborder: 1.8,
      child: Icon(
        Icons.add,
        color: Colors.grey[400],
        size: 35,
      ),
    );
  }

  Widget titleSection() {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text(
            'Llegamos al Final',
            type: 'title',
            padding: EdgeInsets.only(
              top: height * 0.03,
              bottom: 5,
            ),
          ),
          text(
            'Ingresa algunas fotografias sobre tu trabajo, asi te conoceran mejor.',
            maxLines: 5,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget aceptPolices() {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (vl) {},
          checkColor: Colors.white,
          activeColor: lPrimaryColor,
        ),
        Expanded(
          child: text(
            'Acepta nuestros términos y condiciones',
            maxLines: 2,
            size: 13,
          ),
        ),
      ],
    );
  }

  Widget infoToast() {
    return CtCard(
      color: lSecondaryColor.withAlpha(20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.info,
            color: lSecondaryColor,
            size: 20,
          ),
          Expanded(
            child: text(
              'Recuerda, puedes modificar tus datos después, mantén tu información siempre actualizada, para mantener el interes de los usuarios.',
              padding: const EdgeInsets.only(left: 8, right: 5),
              maxLines: 8,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
