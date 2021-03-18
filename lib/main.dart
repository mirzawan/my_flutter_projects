import 'package:flutter/material.dart';

//Importovanje custom widgeta

import './pitanje.dart';
import './odgovor.dart';

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
              title: Text('Moja aplikacija GitHub verzija'),
            ),
            body: Column(
              children: [
                Pitanje(
                  pitanja[_pitanjeIndex],
                ),
                //Dugme je ovdje samo instancirano, definisano je u odgovor.dart
//odgovoriPitanje bez zagrada znaci da je proslijedjen samo pointer na funkciju
                Odgovor(_odgovoriPitanje),
                Odgovor(_odgovoriPitanje),
                Odgovor(_odgovoriPitanje),
              ],
            )));
  }
}
