import 'package:flutter/cupertino.dart';
import 'package:multiservicios/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios/src/pages/page_pre_login_page.dart';

class SplashPrv with ChangeNotifier {
  SplashPrv() {
    //TODO get data user init app
    //TODO cambiar a blanco antes que cambie de pantalla
    Future.delayed(
      const Duration(seconds: 2),
      () => toPage(
        page: const PgPreLogin(),
        fade: true,
        removePreviusPages: true,
      ),
    );
  }
}
