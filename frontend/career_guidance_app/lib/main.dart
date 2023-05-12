import 'dart:async';
import 'package:career_guidance_app/auth%20services/auth_provider.dart';
import 'package:career_guidance_app/drawer/privacy_policy.dart';
import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:career_guidance_app/screens/apifetch.dart';
import 'package:career_guidance_app/screens/auth_screen.dart';
import 'package:career_guidance_app/screens/careerDetails.dart';
import 'package:career_guidance_app/screens/explore.dart';
import 'package:career_guidance_app/screens/favourites.dart';
import 'package:career_guidance_app/screens/homeScreen.dart';
import 'package:career_guidance_app/screens/splashScreen.dart';
import 'package:career_guidance_app/screens/tabScreen.dart';
import 'package:career_guidance_app/screens/varify_email.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'Career/CareerDataModel.dart';
import 'Career/Dataset.dart';
import 'drawer/about_us.dart';
import 'drawer/contacts.dart';
import 'drawer/events.dart';
import 'drawer/facsPage.dart';
import 'drawer/notes.dart';
import 'drawer/notifications.dart';
import 'drawer/send_feedback.dart';
import 'drawer/settings.dart';
import 'drawer/sharePage.dart';
import 'drawer/termcondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showAppFetch = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
        setState(() {
        _showAppFetch = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: UserDetails(),
        ),
        ChangeNotifierProvider.value(value: Dataset()),
        ChangeNotifierProvider.value(value: AuthProvider()),
      ],
      child: FutureBuilder(
           future: _initialization,
          builder: (context, appSnapshot) {
            return MaterialApp(
              title: 'Career Guidance App',
              theme: ThemeData(
                  primaryColor: Colors.black,
                accentColor: Colors.amber,
                canvasColor: Color.fromRGBO(250, 250, 250, 1),
                fontFamily: 'Muli',
                textTheme: ThemeData.light().textTheme.copyWith(
                    bodyText1: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    bodyText2: TextStyle(
                      color: Colors.black,
                    ),
                    subtitle1: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed',
                      fontWeight: FontWeight.bold,
                    )),
              ), 
              routes: {
                '/': (context) => _showAppFetch
                    ? SplashScreen()
                    : Provider.of<UserDetails>(context).isLogin == false
                        ? StreamBuilder(
                            stream: FirebaseAuth.instance.authStateChanges(),
                            builder: (ctx, userSnapshot) {
                              if (userSnapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return SplashScreen();
                              }
                              if (userSnapshot.hasData) {
                                return TabScreen(0);
                                  }
                              return AuthScreen();
                            })
                        : TabScreen(0),
               
                Homescreen.homeRoute: (context) => Homescreen(),
                 CareenDetails.CareerDetailRoute: (context) => CareenDetails(),
                ExploreScreen.exploreRoute: (context) => ExploreScreen(),
                FavouriteScreen.favroute: (context) => FavouriteScreen(),
                ApiFetch.ApiFetchRoute: (context) => ApiFetch(),
                PrivacyPolicyPage.PrivacyPolicyRoute: (context) =>
                    PrivacyPolicyPage(),
                ContactsPage.contactPageRoute: (context) => ContactsPage(),
                EventsPage.eventsPageRoute: (context) => EventsPage(),
                AboutPage.aboutPageRoute: (context) => AboutPage(),
                NotesPage.notePageRoute: (context) => NotesPage(),
                NotificationsPage.notificationPageRoute: (context) =>
                    NotificationsPage(),
                ContactsPage.contactPageRoute: (context) => ContactsPage(),
                TermAndCondPage.termandcondPageRoute: (context) =>
                    TermAndCondPage(),
                SharePage.sharePageRoute: (context) => SharePage(),
                ContactsPage.contactPageRoute: (context) => ContactsPage(),
                FaqsPage.faqPageRoute: (context) => FaqsPage(),
                SendFeedbackPage.feedbackPageRoute: (context) =>
                    SendFeedbackPage(),
                SettingsPage.settingsPageRoute: (context) => SettingsPage()
              },
            );
          }),
    );
  }
}
