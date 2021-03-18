import 'package:flutter/material.dart';

class Pitanje extends StatelessWidget {
  final String textPitanja;

  Pitanje(this.textPitanja);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(25),
      color: Colors.blue[400],
      child: Text(
        textPitanja,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
