import 'package:flutter/material.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';

// Global context on Material APP on Main
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
BuildContext? ctx = navigatorKey.currentContext;

// Get Theme data everywere
ThemeData theme = Theme.of(ctx!);

Themes th = Themes();

//SIZE VARIABLES
double height = MediaQuery.of(ctx!).size.height;
double width = MediaQuery.of(ctx!).size.width;
Size size = MediaQuery.of(ctx!).size;

// PADDING APP
double paddApp = (width * 0.08) - 8;

//Padding for login and register
double paddInit = (width * 0.11);
