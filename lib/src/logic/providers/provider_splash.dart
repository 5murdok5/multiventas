import 'package:flutter/cupertino.dart';
import 'package:multiservicios_proveedor/src/helpers/helpers_navigation_page.dart';
import 'package:multiservicios_proveedor/src/pages/page_login.dart';

class SplashPrv with ChangeNotifier {
  SplashPrv() {
    //TODO get data user init app
    //TODO cambiar a blanco antes que cambie de pantalla
    Future.delayed(
      const Duration(seconds: 2),
      () => toPage(
        page: const PgLogn(),
        fade: true,
        removePreviusPages: true,
      ),
    );
  }
}
