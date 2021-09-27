
import 'package:flutter/material.dart';

class AccountProvider with ChangeNotifier{
  bool hidePassword = true;


  void changePasswordState(){
    hidePassword = !hidePassword;
    notifyListeners();
  }


}