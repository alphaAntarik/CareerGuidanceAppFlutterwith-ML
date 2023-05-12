import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/user_details_provider.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  String _name = 'User';
  String _email = "test@gmail.com";
  String _cirName = 'User';

  @override
  Widget build(BuildContext context) {
    final isloggedin = Provider.of<UserDetails>(context).isLogin;
    final fname = Provider.of<UserDetails>(context).firstName;
    final cname = Provider.of<UserDetails>(context).cirname;
    final lname = Provider.of<UserDetails>(context).lastName;
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();

    String getCirname(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _cirName =
                  userData.get('firstName')[0] + userData.get('lastName')[0];
              Provider.of<UserDetails>(context).setCirname(_cirName);
            });
          });
        });
      });
      return _cirName;
    }

    String getUserName(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _name =
                  userData.get('firstName') + ' ' + userData.get('lastName');
            });
          });
        });
      });
      return _name;
    }

    String getUserEmail(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _email = userData.get('email');
            });
          });
        });
      });
      return _email;
    }

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueGrey,
              ),
              child: Center(
                child: Text(
                  "${isloggedin == true ? cname.toUpperCase() : getCirname(uid).toUpperCase()}",
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Text(
            "${isloggedin == true ? fname + lname : getUserName(uid)}",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "${getUserEmail(uid)}",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
