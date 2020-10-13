import 'package:business_card/text_styling.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  final String title;
  final IconData icon;

  ContactInfo({
    this.title,
    this.icon,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyling.contactStyle(),
        ),
        leading: Icon(
          icon,
        ),
      ),
    );
  }
}
