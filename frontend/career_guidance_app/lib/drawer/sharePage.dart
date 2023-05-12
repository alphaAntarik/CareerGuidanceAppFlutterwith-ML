import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class SharePage extends StatelessWidget {
  static String sharePageRoute = '/shareRoute';

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
          'Share app',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            
          ),
        ),
        //centerTitle: true,
      ),
      drawer: InkWell(
        onTap: () {
          print("inkwell");
        },
        child: Drawer_widget(),
      ),
      body: Center(
        child: Text("Share Page"),
      ),
    );
  }
}
