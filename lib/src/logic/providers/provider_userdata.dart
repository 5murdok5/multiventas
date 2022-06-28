import 'package:flutter/foundation.dart';
import 'package:multiservicios/src/models/models_user.dart';

class AuthPrv with ChangeNotifier {
  late UserModel user;
  AuthPrv() {
    user = UserModel(
      name: 'Test',
      id: 'sdad1312sdsadas',
    );
  }
}
