import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

import '../Career/Dataset.dart';
import '../auth services/auth_provider.dart';
import '../widgets/drawer_widget.dart';
import 'apifetch.dart';
import 'homeScreen.dart';

class Homescreen extends StatefulWidget {
  static String homeRoute = '/home';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _imageIndex = 0;
  Timer _timer;

  String _name = 'user';

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isloggedin = Provider.of<UserDetails>(context).isLogin;
    final fname = Provider.of<UserDetails>(context).firstName;
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();

    String getUsername(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _name = userData.get('firstName');
            });
          });
        });
      });
      return _name;
    }

    final _dimage = Provider.of<Dataset>(context).careerlist.toList();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        _imageIndex = (_imageIndex + 1) % _dimage.length;
      });
    });
    return Scaffold(
      drawer: Drawer_widget(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.13),
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Hi ${isloggedin == true ? fname : getUsername(uid)}!!",
                        style: TextStyle(
                            fontSize: 38, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.003),
                      child: Text(
                        "want to become a",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: DefaultTextStyle(
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          for (int i = 0; i < _dimage.length; i++)
                            TyperAnimatedText(
                              ('${_dimage.elementAt(i).careerName}?'),
                            )
                        ],
                        totalRepeatCount: _dimage.length,
                        isRepeatingAnimation: true,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Lottie.asset(
                        "assets/lottie/16766-forget-password-animation.json"),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ApiFetch.ApiFetchRoute);
              },
              child: Shimmer(
                duration: Duration(seconds: 3),
                interval: Duration(seconds: 3),
                color: Colors.white,
                colorOpacity: 0.3,
                enabled: true,
                direction: ShimmerDirection.fromLTRB(),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Container(
                      child: Center(
                          child: Text(
                    "Let's predict",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "RobotoCondensed"),
                  ))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
