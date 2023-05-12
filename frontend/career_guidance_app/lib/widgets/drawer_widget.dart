import 'package:career_guidance_app/drawer/privacy_policy.dart';
import 'package:career_guidance_app/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../drawer/contacts.dart';
import '../drawer/events.dart';
import '../drawer/my_drawer_header.dart';
import '../drawer/notes.dart';
import '../drawer/send_feedback.dart';
import '../drawer/settings.dart';
import '../screens/tabScreen.dart';
import 'drawer widgets/about_us.dart';
import 'drawer widgets/contact_us.dart';
import 'drawer widgets/events.dart';
import 'drawer widgets/facs.dart';
import 'drawer widgets/home.dart';
import 'drawer widgets/logout.dart';
import 'drawer widgets/notes.dart';
import 'drawer widgets/privace_policy.dart';
import 'drawer widgets/settings.dart';
import 'drawer widgets/share_app.dart.dart';
import 'drawer widgets/t&c.dart';

class Drawer_widget extends StatelessWidget {
  const Drawer_widget({Key key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function() param2) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: param2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          MyHeaderDrawer(),
          Home(),
          Settings(),
          Events(),
          Notes(),
          Divider(),
          AboutUs(),
          facs(),
          TermCond(),
          PrivacyPolicy(),
          ContactUs(),
          Divider(),
          ShareApp(),
          LogOut(),
        ],
      ),
    );
  }
}
