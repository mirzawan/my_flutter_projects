import 'package:flutter/material.dart';

class Odgovor extends StatelessWidget {
  final Function selectHandler;

  Odgovor(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
        //stiliziranje dugmeta
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue[200],
          child: Text("Odgovor 1"),
          onPressed: selectHandler,
        ));
  }
}
