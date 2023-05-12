import 'dart:async';

import 'package:career_guidance_app/screens/auth_screen.dart';

import 'package:career_guidance_app/screens/tabScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'apifetch.dart';
import 'explore.dart';
import 'homeScreen.dart';

class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
               decoration: BoxDecoration(
                   image: DecorationImage(
                image: AssetImage('assets/images/CareerImages/logo.png'),
              )
                    ))),
    );
  }
}
