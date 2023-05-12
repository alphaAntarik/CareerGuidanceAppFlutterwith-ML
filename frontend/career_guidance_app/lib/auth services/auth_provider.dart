import 'package:flutter/cupertino.dart';

import 'auth_state.dart';

class AuthProvider extends ChangeNotifier {
  AuthState _state = AuthState();

  AuthState get state => _state;

  void setUser(String username) {
    _state.setUsername(username);
    notifyListeners();
  }

  void clearUser() {
    _state.clear();
    notifyListeners();
  }
}
