import 'package:career_guidance_app/drawer/notifications.dart';
import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:career_guidance_app/screens/explore.dart';
import 'package:career_guidance_app/screens/homeScreen.dart';
import 'package:career_guidance_app/screens/update_details_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../widgets/drawer_widget.dart';
import 'favourites.dart';
import 'others.dart';

class TabScreen extends StatefulWidget {
  static String tabRoute = "/tabRoute";
  int _selectedPageIndex;
  TabScreen(this._selectedPageIndex);
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  String _cirname = 'User';

  List<Map<String, Object>> _pages;

  @override
  void initState() {
    _pages = [
      {
        'page': Homescreen(),
        'title': 'Categories',
      },
      {
        'page': ExploreScreen(),
        'title': "let's explore",
      },
      {
        'page': FavouriteScreen(),
        'title': 'Your Favorite',
      },
      {
        'page': Othersscreen(),
        'title': 'more',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final svg = Provider.of<UserDetails>(context);
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();

    String getCirname(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _cirname =
                  userData.get('firstName')[0] + userData.get('lastName')[0];
            });
          });
        });
      });
      return _cirname;
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          'Career guidance',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UpdateDetailsScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Container(
                width: 30.0,
                height: 30.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                ),
                child: Center(
                  child: Text(
                    "${svg.isLogin == true ? svg.cirname.toUpperCase() : getCirname(uid).toUpperCase()}",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed(NotificationsPage.notificationPageRoute);
            },
          ),
        ],
      ),
      drawer: InkWell(child: Drawer_widget()),
      body: _pages[widget._selectedPageIndex]['page'],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.07,
            vertical: MediaQuery.of(context).size.width * 0.001),
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.width * 0.1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black54, //New
                blurRadius: 30.0,
                offset: Offset(2, 2))
          ],
        ),
        child: BottomNavigationBar(
          onTap: (index1) {
            setState(() {
              widget._selectedPageIndex = index1;
            });
          },
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Theme.of(context).primaryColor,
          currentIndex: widget._selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: widget._selectedPageIndex != 1
                  ? Icon(Icons.lock_outline)
                  : Icon(Icons.lock_open_rounded),
              label: 'explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'more',
            ),
          ],
        ),
      ),
    );
  }
}
