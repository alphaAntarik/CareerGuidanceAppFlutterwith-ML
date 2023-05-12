import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class ContactsPage extends StatelessWidget {
  static String contactPageRoute = '/contactRoute';
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
          'Contact Us',
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "If you have any questions or concerns about our privacy practices, please contact us at supportcareerguidance@gmail.com.",
                softWrap: false,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                  child: Text("Thank you for using Career Guidance App!")),
            ],
          ),
        ),
      ),
    );
  }
}
