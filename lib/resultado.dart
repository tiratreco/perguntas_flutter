import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  String texto;
  final void Function() reiniciar;

  Resultado([String texto, this.reiniciar]) {
    (texto == null) ? this.texto = 'Obrigado.' : this.texto = texto;
  }

  Widget build(BuildContext contexto) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(texto, style: TextStyle(fontSize: 40)),
        ),
        FlatButton(
          child: Text('Reiniciar?', style: TextStyle(fontSize: 15),),
          color: Colors.blue,
          onPressed: reiniciar
          
          )
      ],

      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
