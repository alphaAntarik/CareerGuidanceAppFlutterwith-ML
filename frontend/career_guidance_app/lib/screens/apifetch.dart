import 'package:career_guidance_app/providers/user_details_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../albums/career_album.dart';

Future<CareerAlbum> createAlbum(
    int Database_Fundamentals,
    int Computer_Architecture,
    int Distributed_Computing_Systems,
    int Cyber_Security,
    int Networking,
    int Development,
    int Programming_Skills,
    int Project_Management,
    int Computer_Forensics_Fundamentals,
    int Technical_Communication,
    int AI_ML,
    int Software_Engineering,
    int Business_Analysis,
    int Communication_skills,
    int Data_Science,
    int Troubleshooting_skills,
    int Graphics_Designing) async {
  final http.Response response = await http.get(
    Uri.parse(
        'https://e2b8-45-112-69-57.ngrok-free.app/home?Database%20Fundamentals=$Database_Fundamentals&Computer%20Architecture=$Computer_Architecture&Distributed%20Computing%20Systems=$Distributed_Computing_Systems&Cyber%20Security=$Cyber_Security&Networking=$Networking&Development=$Development&Programming%20Skills=$Programming_Skills&Project%20Management=$Project_Management&Computer%20Forensics%20Fundamentals=$Computer_Forensics_Fundamentals&Technical%20Communication=$Communication_skills&AI%20ML=$AI_ML&Software%20Engineering=$Software_Engineering&Business%20Analysis=$Business_Analysis&Communication%20skills=$Communication_skills&Data%20Science=$Data_Science&Troubleshooting%20skills=$Troubleshooting_skills&Graphics%20Designing=$Graphics_Designing'),
  );

  if (response.statusCode == 200) {
    return CareerAlbum.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}

class ApiFetch extends StatefulWidget {
  static String ApiFetchRoute = '/apiFetch';

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;
  TextEditingController _controller4;
  TextEditingController _controller5;
  TextEditingController _controller6;
  TextEditingController _controller7;
  TextEditingController _controller8;
  TextEditingController _controller9;
  TextEditingController _controller10;
  TextEditingController _controller11;
  TextEditingController _controller12;
  TextEditingController _controller13;
  TextEditingController _controller14;
  TextEditingController _controller15;
  TextEditingController _controller16;
  TextEditingController _controller17;

  @override
  void initState() {
    super.initState();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    _controller4 = TextEditingController();
    _controller5 = TextEditingController();
    _controller6 = TextEditingController();
    _controller7 = TextEditingController();
    _controller8 = TextEditingController();
    _controller9 = TextEditingController();
    _controller10 = TextEditingController();
    _controller11 = TextEditingController();
    _controller12 = TextEditingController();
    _controller13 = TextEditingController();
    _controller14 = TextEditingController();
    _controller15 = TextEditingController();
    _controller16 = TextEditingController();
    _controller17 = TextEditingController();

    _controller1.text = '0';
    _controller2.text = '0';
    _controller3.text = '0';
    _controller4.text = '0';
    _controller5.text = '0';
    _controller6.text = '0';
    _controller7.text = '0';
    _controller8.text = '0';
    _controller9.text = '0';
    _controller10.text = '0';
    _controller11.text = '0';
    _controller12.text = '0';
    _controller13.text = '0';
    _controller14.text = '0';
    _controller15.text = '0';
    _controller16.text = '0';
    _controller17.text = '0';
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    _controller6.dispose();
    _controller7.dispose();
    _controller8.dispose();
    _controller9.dispose();
    _controller10.dispose();
    _controller11.dispose();
    _controller12.dispose();
    _controller13.dispose();
    _controller14.dispose();
    _controller15.dispose();
    _controller16.dispose();
    _controller17.dispose();
    super.dispose();
  }

  Future<CareerAlbum> _futureAlbum;
  String _name;

  @override
  Widget build(BuildContext context) {
    final isloggedin = Provider.of<UserDetails>(context).isLogin;
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser.uid.toString();

    String getUsername(String uid) {
      setState(() {
        DocumentReference documentReference = users.doc(uid);
        documentReference.get().then((snapshot) {
          users.doc(uid).snapshots().listen((userData) {
            setState(() {
              _name = userData.get('firstName');
            });
          });
        });
      });
      return _name;
    }

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          "${isloggedin == true ? _name : getUsername(uid)}, let us know",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: (_futureAlbum == null)
            ? SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Database Fundamentals',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller2,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Computer architecture',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller3,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Distributed Computing Systems',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller4,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Cyber Security',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller5,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Networking',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller6,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Development',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller7,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Programming Skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller8,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Project Management',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller9,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Cyber law and ethics',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller10,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Technical Communication',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller11,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'AI ML',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller12,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Software Engineering',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller13,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Principles of management',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller14,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Communication skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller15,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Data_Science',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller16,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Troubleshooting skills',
                            hintText: 'out of 10'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: _controller17,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Computer Graphics',
                            hintText: 'out of 10'),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Background color
                      ),
                      child: Text(
                        'check it',
                        selectionColor: Colors.black,
                      ),
                      onPressed: () async {
                        setState(() {
                          _futureAlbum = createAlbum(
                            int.parse(_controller1.text),
                            int.parse(_controller2.text),
                            int.parse(_controller3.text),
                            int.parse(_controller4.text),
                            int.parse(_controller5.text),
                            int.parse(_controller6.text),
                            int.parse(_controller7.text),
                            int.parse(_controller8.text),
                            int.parse(_controller9.text),
                            int.parse(_controller10.text),
                            int.parse(_controller11.text),
                            int.parse(_controller12.text),
                            int.parse(_controller13.text),
                            int.parse(_controller14.text),
                            int.parse(_controller15.text),
                            int.parse(_controller16.text),
                            int.parse(_controller17.text),
                          );
                        });
                      },
                    ),
                  ],
                ),
              )
            : Center(
                child: FutureBuilder<CareerAlbum>(
                  future: _futureAlbum,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Center(
                          child: Positioned(
                        bottom: 0.0,
                        child: Stack(
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height,
                                alignment: Alignment.bottomCenter,
                                child: Lottie.asset('assets/lottie/man.json')),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                (snapshot.data.placement ==
                                        'Application Support Engineer')
                                    ? "Software test Engineer"
                                    : (snapshot.data.placement ==
                                            'Software tester')
                                        ? "Software test Engineer"
                                        : (snapshot.data.placement ==
                                                'Cyber Security Specialist')
                                            ? "Cyber Security Analyst"
                                            : (snapshot.data.placement ==
                                                    'Information Security Specialist')
                                                ? "Cyber Security Analyst"
                                                : (snapshot.data.placement ==
                                                        'Technical Writer')
                                                    ? "Content Writer"
                                                    : (snapshot.data
                                                                .placement ==
                                                            'Customer Service Executive')
                                                        ? "BPO"
                                                        : (snapshot.data
                                                                    .placement ==
                                                                'Helpdesk Engineer')
                                                            ? "KPO"
                                                            : (snapshot.data
                                                                        .placement ==
                                                                    'API Specialist')
                                                                ? "Database Administrator,"
                                                                    "Software Developer"
                                                                : "${snapshot.data.placement}",
                                style: GoogleFonts.openSans(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ));
                    } else if (snapshot.hasError) {
                      return Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_kjixtysj.json',
                          fit: BoxFit.cover);
                    }

                    return Center(
                        child: Lottie.asset(
                            'assets/lottie/97171-loading-plane.json',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover));
                  },
                ),
              ),
      ),
    );
  }
}
