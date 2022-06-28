import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_btn_cont.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_input.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_overlay.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class DataSection extends StatelessWidget {
  const DataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: OverlayCont(
        widget: Container(
          padding: EdgeInsets.symmetric(
            horizontal: paddApp + 5,
          ),
          width: width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              titleSection(),
              imgUser(),
              forDataUser(),
              const Align(
                alignment: Alignment.centerRight,
                child: BtnContinuar(
                  titleBtn: 'Continuar',
                ),
              )
            ],
          ),
        ),
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
            '¡Faltan algunos datos!',
            type: 'title',
            padding: EdgeInsets.only(
              top: height * 0.03,
              bottom: 5,
            ),
          ),
          text(
            'Ingresa tus datos para continuar...',
            maxLines: 5,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget imgUser() {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          top: height * 0.04,
          bottom: height * 0.05,
        ),
        width: 120,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey[300],
              maxRadius: 60,
              child: Icon(
                Icons.photo_camera_rounded,
                color: Colors.grey[600],
                size: 35,
              ),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                maxRadius: 19,
                backgroundColor: lPrimaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget forDataUser() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Input(
          title: 'Nombres',
          padding: EdgeInsets.only(bottom: 15),
          prefixIcon: Icon(
            Icons.person_sharp,
          ),
        ),
        Input(
          title: 'Teléfono',
          padding: EdgeInsets.only(bottom: 15),
          prefixIcon: Icon(
            Icons.phone,
          ),
        ),
        Input(
          title: 'Email',
          padding: EdgeInsets.only(bottom: 15),
          prefixIcon: Icon(
            Icons.email,
          ),
        ),
        Input(
          padding: EdgeInsets.only(bottom: 15),
          title: 'Contraseña',
          prefixIcon: Icon(
            Icons.lock,
          ),
        ),
        Input(
          padding: EdgeInsets.only(bottom: 15),
          title: 'Re-Contraseña',
          prefixIcon: Icon(
            Icons.lock_open_rounded,
          ),
        ),
      ],
    );
  }
}
