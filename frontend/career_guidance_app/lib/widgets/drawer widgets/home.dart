import 'package:career_guidance_app/drawer/privacy_policy.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../screens/tabScreen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Row(
          children: [
            Icon(Icons.home, color: Theme.of(context).primaryColor, size: 28),
            SizedBox(
              width: 25,
            ),
            Text("Home",
                style: GoogleFonts.ubuntuCondensed(
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.black))),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => TabScreen(0)));
      },
    );
  }
}
