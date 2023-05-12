import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class SettingsPage extends StatefulWidget {
  static String settingsPageRoute = '/settingsRoute';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title:
          
            Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
        
          ),
        ),
        
      ),
      drawer: InkWell(
        onTap: () {
          print("inkwell");
        },
        child: Drawer_widget(),
      ),
      body: Center(
        child: Text("Settings Page"),
      ),
    );
  }
}
