import 'package:flutter/material.dart';

//Importovanje custom widgeta

import './pitanje.dart';

void main() => runApp(MojaApp());

class MojaApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MojaAppState();
  }
}

class _MojaAppState extends State<MojaApp> {
  var _pitanjeIndex = 0;

  void _odgovoriPitanje() {
    setState(() {
      _pitanjeIndex = _pitanjeIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Definisanje liste pitanja

    var pitanja = ["Omiljena boja?", "Omiljena hrana?"];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Moja prva aplikacija GitHub verzija'),
            ),
            body: Column(
              children: [
                Pitanje(
                  pitanja[_pitanjeIndex],
                ),
                RaisedButton(
                  child: Text("Dugme 1"),
                  //Ime funkcije napisano bez zagrade oznacava pokazivac na
                  //tu funkciju
                  onPressed: _odgovoriPitanje,
                ),
                RaisedButton(
                  child: Text("Dugme 2"),
                  //Definisanje anonimne funkcije u jednoj liniji
                  onPressed: () => print("Kliknuto dugme 2"),
                ),
                RaisedButton(
                  child: Text("Dugme 3"),
                  //Definisanje višelinijske anonimne funkcije
                  onPressed: () {
                    //..ovdje mozemo pisat vise linija
                    print("Kliknuto dugme 3");
                  },
                ),
              ],
            )));
  }
}
