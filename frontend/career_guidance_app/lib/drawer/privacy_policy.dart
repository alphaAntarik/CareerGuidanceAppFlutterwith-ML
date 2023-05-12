import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class PrivacyPolicyPage extends StatefulWidget {
  static String PrivacyPolicyRoute = '/privacyRoute';
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
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
          'Privacy Policy',
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
          child: Drawer_widget()),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                  "We are committed to protecting the privacy and security of our users. This privacy policy explains how we collect, use, and disclose personal information when you use our mobile application. \nWhat Information We Collect\nWe collect the following types of personal information from you when you use our App:"),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Device Information: We collect certain information about your mobile device, including the type of device, operating system version, and device identifiers (such as the IMEI or IDFA).\n• Usage Information: We collect information about how you use our App, including the features you use and the actions you take within the App.\n• Personal Information: We may collect personal information from you, such as your name, email address, and location, if you choose to provide it to us."),
              SizedBox(
                height: 5,
              ),
              Text(
                  "How We Use Your Information\nWe use the information we collect from you to provide and improve our App, as well as to communicate with you about our products and services. Specifically, we use your information to:"),
              SizedBox(
                height: 5,
              ),
              Text(
                  "• Provide and improve our App: We use your information to provide and maintain our App, to personalize your experience, and to develop new features and functionality.\n• Communicate with you: We may use your information to respond to your inquiries, to send you updates about our products and services, and to provide you with marketing communications.\n• Analyze and improve our services: We use your information to understand how our App is used and to improve our services, such as by conducting research and analysis.")
            ],
          ),
        ),
      ),
    );
  }
}
