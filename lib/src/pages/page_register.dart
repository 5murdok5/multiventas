import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/widgets/widget_from_reg_lg.dart';
import 'package:multiservicios/src/widgets/widget_overlay_cont.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PgRegister extends StatelessWidget {
  final bool isCliente;
  const PgRegister({Key? key, this.isCliente = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => dismisKeybr(context),
        child: Scaffold(
          body: SingleChildScrollView(
            child: OverlayCont(
              widget: contFormLg(),
            ),
          ),
        ),
      ),
    );
  }

  Widget contFormLg() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddInit),
      width: width,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          titleLg(),
          formLogin(false),
        ],
      ),
    );
  }

  Widget titleLg() {
    return Column(
      children: [
        text('Registro', type: 'title'),
        const SizedBox(
          height: 5,
        ),
        text(
          'Completa el formulario de registro',
        ),
        text(
          'para continuar',
        ),
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
        FomrComponet(
          isLogin: formLg,
        ),
      ],
    );
  }
}
