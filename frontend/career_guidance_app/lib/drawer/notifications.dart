import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class NotificationsPage extends StatelessWidget {
  static String notificationPageRoute = '/notificationRoute';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          'Notifications',
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
        child: Text("Notifications Page"),
      ),
    );
  }
}
