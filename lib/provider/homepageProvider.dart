import 'package:flutter/cupertino.dart';

class HomepageProvider with ChangeNotifier {
  bool? iselegiable;
  String? msg = "";
  void checkEligibility(@required int age) {
    if (age >= 18) {
      iselegiable = true;
      msg = "You are Eligible";
      notifyListeners(); //notify about some chagnes
    } else {
      iselegiable = false;
      msg = "You are not Eligible";
      notifyListeners();
    }
  }
}
