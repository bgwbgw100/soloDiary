import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  
  static final LoginProvider _instance = new LoginProvider();
  _LoginProvider(){}
  
  static LoginProvider getInstance(){
    return _instance;
  }
  
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void loginSetProvider() {
 
    _isLoggedIn = true;
    notifyListeners();
  }

  void logoutSetProvider() {
 
    _isLoggedIn = false;
    notifyListeners();
  }
}