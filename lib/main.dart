import 'package:business_card/contact_info.dart';
import 'package:business_card/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/picture.png'),
            ),
            Text(
              'Edson Dota',
              style: GoogleFonts.pacifico(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Flutter Developer'.toUpperCase(),
              style: TextStyling.contactStyle().copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            ContactInfo(
              title: '+55 47 99232-1601',
              icon: Icons.phone,
            ),
            ContactInfo(
              title: 'edson.dota@arctouch.com',
              icon: Icons.email,
            ),
          ],
        ),
      ),
    );
  }
}
