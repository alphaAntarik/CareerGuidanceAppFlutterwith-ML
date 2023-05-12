import 'dart:convert';

import 'package:flutter/material.dart';

class Album {
  final String fname;
  final String lname;
  final String collegeName;
  final String email;
  final String password;
  final String cpassword;
  final String id;
  Album(
      {@required this.fname,
      @required this.lname,
      @required this.collegeName,
      @required this.email,
      @required this.password,
      @required this.cpassword,
      @required this.id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        fname: json['fname'],
        lname: json['lname'],
        collegeName: json['collegeName'],
        email: json['email'],
        password: json['password'],
        cpassword: json['cpassword'],
        id: json['_id']);
  }
}
