import 'package:career_guidance_app/Career/CareerDataModel.dart';
import 'package:career_guidance_app/Career/Dataset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../screens/careerDetails.dart';
import '../screens/favourites.dart';
import 'careerWeb.dart';

class CareerItem extends StatefulWidget {
  @override
  State<CareerItem> createState() => _CareerItemState();
}

class _CareerItemState extends State<CareerItem> {
  // final String careerName;
  @override
  Widget build(BuildContext context) {
    final career = Provider.of<CareerDataModel>(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ZoomTapAnimation(
      begin: 1.0,
      end: 0.9,
      onTap: () {
        Navigator.of(context).pushNamed(CareenDetails.CareerDetailRoute,
            arguments: career.careerName);
      },
      child: Container(
          padding: EdgeInsets.all(screenHeight * 0.03),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: screenHeight * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenWidth * 0.00000000001,
                            ),
                            child: InkWell(
                              child: Icon(
                                Icons.language,
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                  )
                                ],
                                size: 27,
                              ),
                              onTap: () {
                                print(career.careerName);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            careerWeb(career.dataUrl, career)));
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: screenWidth * 0.00000000001,
                            ),
                            child: InkWell(
                              child: Icon(
                                career.isFavourite == false
                                    ? Icons.favorite_outline
                                    : Icons.favorite,
                                color: Colors.red,
                                shadows: [
                                  Shadow(
                                    offset: Offset(2.0, 2.0),
                                    blurRadius: 10.0,
                                    color: Colors.black,
                                  )
                                ],
                                size: 27,
                              ),
                              onTap: () {
                                setState(() {
                                  career.toggleFavoriteStatus();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SizedBox(height: 3),
                      Text(
                        career.careerName,
                        style: TextStyle(
                            fontSize: screenHeight * 0.04,
                            color: Colors.white,
                            fontFamily: "RobotoCondensed",
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(4.0, 4.0),
                                blurRadius: 10.0,
                                color: Colors.black,
                              ),
                            ]),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Text(
                        career.animatedText,
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.white,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 10.0,
                                color: Colors.black,
                              ),
                            ]),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(career.imagePath), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
