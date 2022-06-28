import 'dart:developer';

import 'package:flutter/cupertino.dart';

class PrvRegister with ChangeNotifier {
  late PageController pgctr;

  PrvRegister() {
    pgctr = PageController(
      initialPage: 0,
    );
  }

  void changePage() {
    print('entro aqui');
    notifyListeners();
    pgctr.animateToPage(
      2,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInCubic,
    );
    // pgctr.nextPage(
    //   duration: const Duration(milliseconds: 400),
    //   curve: Curves.easeInCubic,
    // );
  }
}
