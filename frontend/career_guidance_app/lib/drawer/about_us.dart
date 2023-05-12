import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class AboutPage extends StatelessWidget {
  static String aboutPageRoute = '/aboutRoute';

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
            //Container(
            //padding: EdgeInsets.only(right: 10),
            // child:
            Text(
          'About us',
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
        child: Text(
            "Welcome to our carrier guidance app! Our goal is to provide you with the resources and tools you need to explore and pursue the career path of your dreams.\nAt our carrier guidance app, we understand that choosing a career can be a daunting task, especially when there are so many options to consider. That's why we've created a platform that helps you discover your passions and interests, and matches them with relevant career options.\n\nWe offer a variety of features to help you on your journey, including:\n\n  • Career assessment tests: Take our personality and skills assessment tests to discover which careers may be the best fit for you.\n\n  • Career exploration tools: Explore a wide range of careers by industry, salary, education level, and more.\n\n  • Job search resources: Find job listings, resume templates, interview tips, and more to help you land your dream job.\n\n  • Expert advice: Our team of career counselors and industry professionals provide expert advice and guidance on career planning, job searching, and professional development.\n\nWe're dedicated to helping you achieve your career goals and providing you with the support and guidance you need along the way. Whether you're just starting out or looking to make a career change, our app has everything you need to succeed.\nThank you for choosing our carrier guidance app, and we look forward to helping you achieve your dreams!"),
      ),
    );
  }
}
