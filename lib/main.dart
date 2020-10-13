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
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/picture.png'),
              ),
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
              style: TextFormating.contactStyle().copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                ),
                title: Text(
                  '+55 47 99232-1601',
                  style: TextFormating.contactStyle(),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              child: ListTile(
                title: Text(
                  'edson.dota@arctouch.com',
                  style: TextFormating.contactStyle(),
                ),
                leading: Icon(
                  Icons.email,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension TextFormating on TextStyle {
  static TextStyle contactStyle() {
    return GoogleFonts.sourceSansPro(
      fontSize: 20,
      color: Colors.teal.shade900,
    );
  }
}
