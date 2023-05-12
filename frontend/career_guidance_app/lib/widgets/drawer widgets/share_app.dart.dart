import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../drawer/sharePage.dart';

class ShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Row(
          children: [
            Icon(Icons.share, color: Theme.of(context).primaryColor, size: 28),
            SizedBox(
              width: 25,
            ),
            Text("Share app",
                style: GoogleFonts.ubuntuCondensed(
                    textStyle:
                        const TextStyle(fontSize: 20, color: Colors.black))),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(SharePage.sharePageRoute);
      },
    );
  }
}
