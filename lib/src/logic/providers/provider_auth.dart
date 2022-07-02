import 'package:flutter/cupertino.dart';
import 'package:multiservicios/src/helpers/helpers_toast.dart';

class AuthPrv with ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  void sendRegister() {
    if (formKey.currentState!.validate()) {
      toast('correctp');
    } else {
      toast('Error', type: 'error');
    }
  }

  String validatorName(String? text) {
    if (text!.isEmpty) {
      return 'Este campo esta vacio';
    } else {
      return null;
    }
  }
}
