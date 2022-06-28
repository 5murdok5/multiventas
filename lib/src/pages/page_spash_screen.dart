import 'package:flutter/material.dart';

import 'package:multiservicios_proveedor/src/logic/providers/provider_splash.dart';
import 'package:multiservicios_proveedor/src/pages/widget_logo.dart';
import 'package:multiservicios_proveedor/src/themes/theme_themes.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_card.dart';
import 'package:multiservicios_proveedor/src/widgets/widget_powered_text.dart';
import 'package:provider/provider.dart';

class PageSplash extends StatelessWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lSecondaryColor,
      body: ChangeNotifierProvider<SplashPrv>(
        create: (context) => SplashPrv(),
        child: Consumer<SplashPrv>(
          builder: (context, value, child) => SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                logoCont(),
                infoPowered(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget logoCont() {
    return const Center(
      child: CtCard(
        child: WdLogo(),
      ),
    );
  }

  Widget infoPowered() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: poweredText(),
    );
  }
}
