import 'package:career_guidance_app/drawer/privacy_policy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../providers/user_details_provider.dart';
import '../../screens/tabScreen.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Row(
          children: [
            Icon(Icons.logout, color: Theme.of(context).primaryColor, size: 28),
            SizedBox(
              width: 25,
            ),
            Text("Logout",
                style: GoogleFonts.ubuntuCondensed(
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.black))),
          ],
        ),
      ),
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              elevation: 16,
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.045,
                      horizontal: MediaQuery.of(context).size.height * 0.02),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Logout",
                            style: GoogleFonts.openSans(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.03,
                                fontWeight: FontWeight.w700)),
                        Divider(height: 20, thickness: 1),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Are you sure to logout?",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.0256),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TabScreen(3)));
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "cancel",
                                  style: TextStyle(
                                      color: Colors.blue[400],
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                )),
                            InkWell(
                                onTap: () {
                                  FirebaseAuth.instance.signOut();
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .isloggedin(false);
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setfirstName("");
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setlastName("");
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setEmail("");
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setcollegeName("");
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setpassword("");
                                  Provider.of<UserDetails>(context,
                                          listen: false)
                                      .setCirname("");
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  "yes",
                                  style: TextStyle(
                                      color: Colors.blue[400],
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.025),
                                )),
                          ],
                        )
                      ],
                    ),
                  )),
            );
          },
        );
      },
    );
  }
}
