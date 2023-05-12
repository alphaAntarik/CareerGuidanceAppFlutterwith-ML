import 'dart:convert';

import 'package:career_guidance_app/albums/album.dart';
import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:career_guidance_app/screens/auth_screen.dart';
import 'package:career_guidance_app/screens/splashScreen.dart';
import 'package:career_guidance_app/screens/tabScreen.dart';
import 'package:career_guidance_app/screens/update_details_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../albums/islogin.dart';
import '../widgets/drawer widgets/about_us.dart';
import '../widgets/drawer widgets/contact_us.dart';
import '../widgets/drawer widgets/facs.dart';
import '../widgets/drawer widgets/logout.dart';
import '../widgets/drawer widgets/privace_policy.dart';
import '../widgets/drawer widgets/share_app.dart.dart';
import '../widgets/drawer widgets/t&c.dart';

class Othersscreen extends StatefulWidget {
  @override
  State<Othersscreen> createState() => _OthersscreenState();
}

class _OthersscreenState extends State<Othersscreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserDetails>(context).user;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.12),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: ListView(
          padding: EdgeInsets.only(left: 5),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Profile Settings",
                  style: GoogleFonts.ubuntuCondensed(
                      textStyle: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                      Colors.black87.withOpacity(0.2)),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).canvasColor), // Background color
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_add_alt_1_outlined,
                        color: Theme.of(context).primaryColor, size: 28),
                    SizedBox(
                      width: 25,
                    ),
                    Text("Change Account info",
                        style: GoogleFonts.ubuntuCondensed(
                            textStyle: const TextStyle(
                                fontSize: 20, color: Colors.black))),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => UpdateDetailsScreen()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/changePass");
              },
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                      Colors.black87.withOpacity(0.2)),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).canvasColor), // Background color
                ),
                child: Row(
                  children: [
                    Icon(Icons.password,
                        color: Theme.of(context).primaryColor, size: 28),
                    SizedBox(
                      width: 25,
                    ),
                    Text("Change password",
                        style: GoogleFonts.ubuntuCondensed(
                            textStyle: const TextStyle(
                                fontSize: 20, color: Colors.black))),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.settings,
                    color: Theme.of(context).primaryColor, size: 30),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "General Settings",
                  style: GoogleFonts.ubuntuCondensed(
                      textStyle: const TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            AboutUs(),
            SizedBox(
              height: 10,
            ),
            facs(),
            SizedBox(
              height: 10,
            ),
            TermCond(),
            SizedBox(
              height: 10,
            ),
            ContactUs(),
            SizedBox(
              height: 10,
            ),
            PrivacyPolicy(),
            SizedBox(
              height: 10,
            ),
            ShareApp(),
            SizedBox(
              height: 10,
            ),
            LogOut(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
