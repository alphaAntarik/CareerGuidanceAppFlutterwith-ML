import 'dart:convert';

import 'package:flutter/material.dart';

class IsLogin {
  final String message;

  IsLogin({@required this.message});

  factory IsLogin.fromJson(Map<String, dynamic> json) {
    return IsLogin(
      message: json['message'],
    );
  }
}
