import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:career_guidance_app/Career/CareerDataModel.dart';
import 'package:career_guidance_app/Career/Dataset.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/careeritem.dart';
import 'fav_load.dart';

class FavouriteScreen extends StatefulWidget {
  static String favroute = '/favRoute';

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    List<CareerDataModel> favList =
        Provider.of<Dataset>(context).favoriteCareers;

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          'Your saved items -',
          style: TextStyle(color: Colors.white),
        ),
        automaticallyImplyLeading: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: InkWell(
              child: Icon(Icons.refresh),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FavLoad()));
              },
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: ListView.builder(
            itemCount: favList.length,
            itemBuilder: (context, index) => ChangeNotifierProvider.value(
                value: favList[index],
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.width * 0.02),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: CareerItem(),
                ))),
      ),
    );
  }
}
