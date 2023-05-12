import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CareerDataModel with ChangeNotifier {
  final String careerName;
  final String imagePath;
  final String dataUrl;
  final String animatedText;
  // final String intro;
  final String edu;
  final String skll;
  final String esal;
  final String act;
  bool isFavourite;

  CareerDataModel(
      {@required this.careerName,
      @required this.imagePath,
      @required this.dataUrl,
      @required this.animatedText,
      // @required this.intro,
      @required this.edu,
      @required this.skll,
      @required this.esal,
      @required this.act,
      this.isFavourite = false});

  get is_Favourite => null;

  void toggleFavoriteStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setBool("isFav", !isFavourite);
    isFavourite = prefs.getBool("isFav");
    notifyListeners();
  }
}
