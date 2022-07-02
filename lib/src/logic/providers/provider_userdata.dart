import 'package:flutter/foundation.dart';
import 'package:multiservicios/src/models/models_user.dart';

class UserDataPrv with ChangeNotifier {
  late UserModel user;
  UserDataPrv() {
    user = UserModel(
      name: 'Test',
      id: 'sdad1312sdsadas',
    );
  }
}
