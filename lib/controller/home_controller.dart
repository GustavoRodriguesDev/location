import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  Widget icon = const Icon(Icons.favorite_border);
  bool select = false;

  void selectWidget() {
    if (select == false) {
      icon = const Icon(
        Icons.favorite_border,
      );
    } else {
      icon = const Icon(
        Icons.favorite,
        color: Colors.red,
      );
    }
    notifyListeners();
  }
}
