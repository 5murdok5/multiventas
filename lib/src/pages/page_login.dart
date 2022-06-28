import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/pages/page_register.dart';
import 'package:multiservicios/src/widgets/widget_from_reg_lg.dart';
import 'package:multiservicios/src/widgets/widget_overlay_cont.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PgLogn extends StatelessWidget {
  final bool isCliente;
  const PgLogn({Key? key, this.isCliente = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => dismisKeybr(context),
      child: Scaffold(
        body: SingleChildScrollView(
          child: OverlayCont(
            widget: contFormLg(),
          ),
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
      //CHnage
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          titleLg(),
          formLogin(true),
          btnRegister(),
        ],
      ),
    );
  }

  Widget titleLg() {
    return Column(
      children: [
        text('Iniciar Sesión', type: 'title'),
        const SizedBox(
          height: 5,
        ),
        text('Ingresa tus datos, para disfrutar de'),
        text('nuestros beneficios')
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
        FomrComponet(isLogin: formLg),
      ],
    );
  }

  Widget btnRegister() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: TextButton(
        onPressed: () => toPage(
          page: const PgRegister(),
        ),
        child: RichText(
          text: TextSpan(
            text: 'Aún no tienes cuenta?, ',
            style: theme.textTheme.bodyText1,
            children: const <TextSpan>[
              TextSpan(
                text: 'Registrate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
