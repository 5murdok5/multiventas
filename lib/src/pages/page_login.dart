import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_actions.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/page_register.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_button.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_input.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_text.dart';

class PgLogn extends StatelessWidget {
  final bool isCliente;
  const PgLogn({Key? key, this.isCliente = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dismisKeybr(context),
      child: Scaffold(
        backgroundColor: lSecondaryColor,
        body: SingleChildScrollView(
          child: contFormLg(),
        ),
      ),
    );
  }

  Widget contFormLg() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: paddInit,
      ),
      width: width,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          titleLg(),
          formLogin(true),
        ],
      ),
    );
  }

  Widget titleLg() {
    return Column(
      children: [
        text(
          'Iniciar Sesión',
          type: 'title',
          color: Colors.white,
        ),
        const SizedBox(
          height: 5,
        ),
        text('Ingresa tus datos, para disfrutar de', color: Colors.white),
        text('nuestros beneficios', color: Colors.white)
      ],
    );
  }

  Widget formLogin(bool formLg) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 40,
        ),
        Input(
          title: 'Email',
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white.withAlpha(200),
          ),
          colorBorderInp: Colors.white.withAlpha(200),
        ),
        Input(
          colorBorderInp: Colors.white.withAlpha(200),
          title: 'Contraseña',
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white.withAlpha(200),
          ),
        ),
        brnForgotPass(),
        const SizedBox(
          height: 15,
        ),
        Button(
          textbtn: 'Ingresar',
          showArrowIcon: false,
          onTap: () => toPage(
            page: const PgRegister(),
          ),
        ),
      ],
    );
  }

  Widget brnForgotPass() {
    return Row(
      children: [
        const Spacer(),
        InkWell(
          onTap: () {},
          child: text(
            'Recuperar contraseña',
            padding: const EdgeInsets.only(top: 8.0, bottom: 15),
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
