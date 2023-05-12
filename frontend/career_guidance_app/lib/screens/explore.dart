import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:career_guidance_app/Career/CareerDataModel.dart';
import 'package:career_guidance_app/Career/Dataset.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/careeritem.dart';

class ExploreScreen extends StatelessWidget {
  static String exploreRoute = '/exploreRoute';

  @override
  Widget build(BuildContext context) {
    final careerDataset = Provider.of<Dataset>(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Center(
              child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.4,
                left: MediaQuery.of(context).size.width * 0.05),
            color: Theme.of(context).primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlowText(
                  "Explore more!!!",
                  style: GoogleFonts.dosis(
                    fontSize: MediaQuery.of(context).size.width * 0.15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                DefaultTextStyle(
                  style: GoogleFonts.kalam(
                      textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.white,
                  )),
                  child: AnimatedTextKit(repeatForever: true, animatedTexts: [
                    TyperAnimatedText(
                        "\"A good career guidance can give you the clarity and confidence to pursue your dreams.\"",
                        speed: Duration(milliseconds: 100),
                        textStyle: TextStyle(color: Colors.white)),
                    TyperAnimatedText(
                        "\"Your career is a journey, not a destination.\"",
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText(
                        "\"A career is not just about earning a paycheck, it's about fulfilling your purpose in life.\"",
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText(
                        "\"The biggest mistake you can make in your career is not asking for help.\"",
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText(
                        "\"Invest in yourself, get the career guidance you need and deserve.\"",
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText(
                        "\"The best way to predict your future is to create it.\""),
                    TyperAnimatedText(
                        "\"Choose a job you love, and you will never have to work a day in your life.\"",
                        speed: Duration(milliseconds: 100)),
                  ]),
                ),
              ],
            ),
          )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: CarouselSlider(
                options: CarouselOptions(
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 3,
                  autoPlay: true,
                ),
                items: careerDataset.careers
                    .map((e) => ChangeNotifierProvider.value(
                          value: e,
                          child: Stack(
                            children: [
                              Container(
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .8,
                                  height:
                                      MediaQuery.of(context).size.height * .7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                        image: AssetImage(e.imagePath),
                                        opacity: 0.5,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        bottom:
                                            MediaQuery.of(context).size.width *
                                                0.1),
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    height: MediaQuery.of(context).size.height *
                                        0.25,
                                    child: CareerItem(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}
