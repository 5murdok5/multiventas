import 'package:flutter/material.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/helpers/helpers_toast.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/models/models_img_banner.dart';
import 'package:multiservicios/src/pages/page_login.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_banner.dart';
import 'package:multiservicios/src/widgets/widget_button.dart';
import 'package:multiservicios/src/widgets/widget_powered_text.dart';
import 'package:multiservicios/src/widgets/widget_text.dart';

class PgPreLogin extends StatefulWidget {
  const PgPreLogin({Key? key}) : super(key: key);

  @override
  State<PgPreLogin> createState() => _PgPreLoginState();
}

class _PgPreLoginState extends State<PgPreLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          bannerSection(),
          btnsSection(),
        ],
      ),
    );
  }

  Widget bannerSection() {
    return CtBanner(
      imgs: listImages,
      isFormAssets: false,
      hg: 0.5,
      radius: const BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
    );
  }

  Widget btnsSection() {
    final marginbtn = EdgeInsets.symmetric(horizontal: width * 0.15);
    return SizedBox(
      height: height * 0.5,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double lcSize = constraints.maxHeight;
          return Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              text(
                'Iniciar Sesión',
                type: 'title',
              ),
              SizedBox(
                height: lcSize * 0.01,
              ),
              text(
                '¿Qué tipo de usuario eres?',
                type: 'body',
              ),
              SizedBox(
                height: lcSize * 0.08,
              ),
              Button(
                textbtn: 'Soy Cliente',
                margin: marginbtn,
                onTap: () => toPage(
                  page: const PgLogn(),
                ),
              ),
              SizedBox(
                height: lcSize * 0.04,
              ),
              Button(
                textbtn: 'Soy Proveedor',
                onlyBorder: true,
                colorBtn: lSecondaryColor,
                margin: marginbtn,
              ),
              SizedBox(
                height: lcSize * 0.2,
              ),
              poweredText(
                textColor: lSecondaryColor,
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              ),
            ],
          );
        },
      ),
    );
  }
}
