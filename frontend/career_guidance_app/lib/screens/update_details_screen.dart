import 'dart:convert';

import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:career_guidance_app/screens/tabScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../albums/album.dart';

class UpdateDetailsScreen extends StatefulWidget {

  @override
  _UpdateDetailsScreenState createState() => _UpdateDetailsScreenState();
}

class _UpdateDetailsScreenState extends State<UpdateDetailsScreen> {
  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();

  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();
    DocumentReference documentReference = users.doc(uid);
    bool successfull = false;


    return Scaffold(
      appBar: AppBar(
        title: Text("Update Details"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _controller1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _controller2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last name',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: _controller3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'College name',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      documentReference
                          .update({
                            'firstName': _controller1.text,
                            'lastName': _controller2.text,
                            'collegeName': _controller3.text
                          })
                          .then((value) => Provider.of<UserDetails>(context)
                              .setEmail('antarik@gmail.com'))
                          .catchError((error) =>
                              print("Failed to update document: $error"));
                      successfull = true;
                    });
                  },
                  child: Container(
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Container(
                        child: Center(
                            child: Text(
                      successfull == false ? "save changes" : "changes saved",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "RobotoCondensed"),
                    ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
