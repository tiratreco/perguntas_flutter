import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String _texto;
  Questao(this._texto);

  Widget build(BuildContext contexto) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(),
      child: Text(
        _texto,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ) 
    );
  }
}
