import 'dart:convert';

import 'package:career_guidance_app/albums/album.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDetails with ChangeNotifier {
  Album _album;
  String _cirname;

  String _firstName = 'first';
  bool _isLogin = false;

  String _lastName = 'last';
  String _collegeName = 'DreamIns';

  String _email = "test@gmail.com";

  String _password = "abcd1234";

  void setUser(Album user) {
    _album = user;
    notifyListeners();
  }

  void isloggedin(bool isloggedin) async {
    _isLogin = isloggedin;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool("islogin", _isLogin);

    notifyListeners();
  }

  void setfirstName(String fname) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("fname", fname);
    _firstName = prefs.getString("fname");
    notifyListeners();
  }

  void setlastName(String lastName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lname", lastName);
    _lastName = prefs.getString("lname");
    notifyListeners();
  }

  void setcollegeName(String collegeName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("collegeName", collegeName);
    _collegeName = prefs.getString("collegeName");
    notifyListeners();
  }

  void setEmail(String email) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", email);
    _email = prefs.getString("email");
    notifyListeners();
  }

  void setpassword(String password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("password", password);
    _password = prefs.getString("password");
    notifyListeners();
  }

  void setCirname(String cirname) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("cirname", cirname);
    _cirname = prefs.getString("cirname");
    notifyListeners();
  }

  Album get user => _album;
  String get cirname => _cirname;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get collegeName => _collegeName;
  String get email => _email;
  String get password => _password;
  bool get isLogin => _isLogin;
}
