import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_button.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Stack(
          // fit: StackFit.expand,
          children: [
            contMap(),
            aceptLocation(),
            contAddress(),
            iconSelectLocation(),
          ],
        ),
      ),
    );
  }

  Widget iconSelectLocation() {
    return Center(
      child: Transform.translate(
        offset: const Offset(0, -15),
        child: const Icon(
          Icons.location_on,
          color: lPrimaryColor,
          size: 35,
        ),
      ),
    );
  }

  Widget contMap() {
    return Container(
      height: height,
      width: width,
      color: Colors.blue[50],
    );
  }

  Widget aceptLocation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: CtCard(
        radius: 0,
        showShadow: true,
        shadowOfs: const Offset(0, -2),
        padding: EdgeInsets.symmetric(horizontal: paddApp, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            text('Selecciona tu Ubicación', type: 'title'),
            text(
              'Buscaremos los servicios más cercanos a ti y te lo mostraremos un feet personalizado',
              maxLines: 4,
            ),
            Button(
              textbtn: 'Seleccionar Ubicación',
              showArrowIcon: false,
              margin: const EdgeInsets.only(
                top: 12,
              ),
              onTap: () => toPage(name: '/categores'),
            )
          ],
        ),
      ),
    );
  }

  Widget contAddress() {
    return SafeArea(
      child: CtCard(
        margin: EdgeInsets.symmetric(
          horizontal: paddApp,
          vertical: 15,
        ),
        showShadow: true,
        shadowColor: Colors.black.withAlpha(25),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: Icon(
                Icons.location_on,
                color: lPrimaryColor,
              ),
            ),
            Expanded(
              child: text(
                'Nostrud elit sint voluptate voluptate qui eu pariatur. voluptate ',
                maxLines: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
