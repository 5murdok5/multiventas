import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:multiservicios/src/helpers/helpers_valiables_const.dart';

class ThemePrv extends ChangeNotifier {
  ThemeMode globalTheme = ThemeMode.light;

  bool get isDarkMode {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode;
  }

  void changeTheme({ThemeMode? theme}) {
    globalTheme =
        theme ?? (isDarkMode == true ? ThemeMode.light : ThemeMode.dark);
    notifyListeners();
  }
}
