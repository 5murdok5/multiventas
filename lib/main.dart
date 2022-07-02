import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';
import 'package:multiservicios/src/logic/providers/provider_auth.dart';
import 'package:multiservicios/src/logic/providers/provider_theme.dart';
import 'package:multiservicios/src/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const InitApp());
}

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => SplashProvaider()),
        ChangeNotifierProvider(create: (_) => ThemePrv()),
        ChangeNotifierProvider(create: (_) => AuthPrv()),
      ],
      child: Consumer<ThemePrv>(
        builder: (context, theme, child) => MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          theme: th.setThemeLight(),
          darkTheme: th.setThemeDark(),
          themeMode: theme.globalTheme,
          // routes: Routes.routes,
          routes: Routes.routes,
        ),
      ),
    );
  }
}
