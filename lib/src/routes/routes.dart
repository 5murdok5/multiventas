import 'package:flutter/cupertino.dart';
import 'package:multiservicios/src/pages/page_categorias.dart';
import 'package:multiservicios/src/pages/page_detail_service.dart';
import 'package:multiservicios/src/pages/page_login.dart';
import 'package:multiservicios/src/pages/page_map.dart';
import 'package:multiservicios/src/pages/page_pre_login_page.dart';
import 'package:multiservicios/src/pages/page_register.dart';
import 'package:multiservicios/src/pages/page_search.dart';
import 'package:multiservicios/src/pages/page_spash_screen.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const PageSplash(),
    '/prelogin': (context) => const PgPreLogin(),
    '/login': (context) => const PgLogn(),
    '/register': (context) => const PgRegister(),
    '/map': (context) => const MapPage(),
    '/categores': (context) => const PgCategory(),
    '/detailService': (context) => const PgDetailService(),
    '/pagesearch': (context) => const PageSearch(),
  };
}
