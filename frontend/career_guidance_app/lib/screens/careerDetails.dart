import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:career_guidance_app/Career/Dataset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../Career/CareerDataModel.dart';
import 'explore.dart';

class CareenDetails extends StatefulWidget {
  static String CareerDetailRoute = '/careerDetailRoute';

  @override
  State<CareenDetails> createState() => _CareenDetailsState();
}

class _CareenDetailsState extends State<CareenDetails> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context).settings.arguments;
    final career = Provider.of<Dataset>(context).findByCareerName(data);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Container(
                // color: Colors.transparent,
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 20, bottom: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Center(
                    child: Text(
                  career.careerName,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "RobotoCondensed",
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            pinned: true,
            backgroundColor: Theme.of(context).primaryColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'image',
                child: Image.asset(
                  career.imagePath,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          (career.animatedText),
                        )
                      ],
                      isRepeatingAnimation: false,
                    ),
                  ),
                  height: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Education / Certification",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "RobotoCondensed",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      career.edu,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Skills",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "RobotoCondensed",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      career.skll,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Expected Salaries",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "RobotoCondensed",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      career.esal,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Activities",
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "RobotoCondensed",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      career.act,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
