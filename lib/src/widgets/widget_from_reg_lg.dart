import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_actions.dart';
import 'package:multiservicios/src/helpers/helpers_toast.dart';
import 'package:multiservicios/src/logic/providers/provider_auth.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_button.dart';
import 'package:multiservicios/src/widgets/widget_input.dart';
import 'package:multiservicios/src/widgets/widget_social_login.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';
import 'package:provider/provider.dart';

class FomrComponet extends StatelessWidget {
  final bool isLogin;
  const FomrComponet({Key? key, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLogin ? formLogin() : contRegisterForm(context);
  }

  Column formLogin() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Input(
          title: 'Email',
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          prefixIcon: Icon(
            Icons.email,
            color: lSecondaryColor.withAlpha(200),
          ),
        ),
        Input(
          title: 'Contraseña',
          prefixIcon: Icon(
            Icons.lock,
            color: lSecondaryColor.withAlpha(200),
          ),
        ),
        brnForgotPass(),
        const SizedBox(
          height: 15,
        ),
        Button(
          textbtn: 'Ingresar',
          showArrowIcon: false,
          // TODO descomentar para eliminar las paginas previas al login
          // onTap: () => toPage(name: '/map',removePreviusPages: true),
          onTap: () {
            toast('Usuario ingresado', type: 'success');
          },
        ),
        const WdSocialLg(),
      ],
    );
  }

  Widget contRegisterForm(BuildContext context) {
    final _auth = Provider.of<AuthPrv>(context);
    return Form(
      key: _auth.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Input(
            title: 'Nombres',
            showError: false,
            prefixIcon: const Icon(Icons.supervised_user_circle_rounded),
            validator: (text) {
              if (text!.isEmpty) {
                return 'Este campo esta vacio';
              } else {
                return null;
              }
            },
          ),
          const Input(
            prefixIcon: Icon(Icons.phone),
            title: 'Teléfono',
          ),
          const Input(
            title: 'Email',
          ),
          const Input(
            title: 'Contraseña',
          ),
          const Input(
            title: 'Re-Contraseña',
          ),
          aceptPolices(),
          const SizedBox(
            height: 15,
          ),
          Button(
            textbtn: 'Registrarse',
            showArrowIcon: false,
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            onTap: () {
              _auth.sendRegister();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          backBtn(),
        ],
      ),
    );
  }

  Widget brnForgotPass() {
    return Row(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: InkWell(
            onTap: () {},
            child: text(
              'Recuperar contraseña',
              color: lPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget backBtn() {
    return TextButton(
      onPressed: () => back(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.chevron_left_outlined,
            color: lSecondaryColor.withAlpha(200),
          ),
          text(
            'Volver',
            type: 'body1',
          ),
          const SizedBox(
            width: 10,
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
}
