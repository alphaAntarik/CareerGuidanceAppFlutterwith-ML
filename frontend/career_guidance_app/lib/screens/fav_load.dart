import 'package:career_guidance_app/screens/favourites.dart';
import 'package:career_guidance_app/screens/tabScreen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FavLoad extends StatelessWidget {
  const FavLoad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => TabScreen(2)));
    });
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lottie/favload.json"),
            Text("Loading...")
          ],
        ),
      ),
    );
  }
}
