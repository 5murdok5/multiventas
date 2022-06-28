import 'package:flutter/cupertino.dart';
import 'package:multiservicios_proveedor/src/pages/page_register/page_register.dart';
import 'package:multiservicios_proveedor/src/pages/page_spash_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const PageSplash(),
    '/register': (context) => const PgRegister(),
  };
}
