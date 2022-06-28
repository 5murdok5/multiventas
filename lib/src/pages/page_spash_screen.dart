import 'package:flutter/material.dart';
import 'package:multiservicios/src/logic/providers/provider_splash.dart';
import 'package:multiservicios/src/themes/theme_themes.dart';
import 'package:multiservicios/src/widgets/widget_card.dart';
import 'package:multiservicios/src/widgets/widget_logo.dart';
import 'package:multiservicios/src/widgets/widget_powered_text.dart';
import 'package:provider/provider.dart';

class PageSplash extends StatelessWidget {
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lPrimaryColor,
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
