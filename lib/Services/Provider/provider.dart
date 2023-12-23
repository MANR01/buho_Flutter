// ignore_for_file: camel_case_types

import 'package:flutter/foundation.dart';

class datosProvider with ChangeNotifier {
  String _fechAn = "";
  String _fechPos = "";

  String get fechAn => _fechAn;
  String get fechPos => _fechPos;

  void setCampos({required String fechAn, required String fechPos}) {
    _fechAn = fechAn;
    _fechPos = fechPos;
    notifyListeners();
  }
}
