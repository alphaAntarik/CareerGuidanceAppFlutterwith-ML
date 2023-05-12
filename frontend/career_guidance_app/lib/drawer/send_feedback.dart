import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class SendFeedbackPage extends StatelessWidget {
  static String feedbackPageRoute = '/sendfeedbackroutepage';

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
          'Send feedback',
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
      body: Container(
        child: Text("Send Feedback Page"),
      ),
    );
  }
}
