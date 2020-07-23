import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final String _pergunta;
  final _respostas;
  final void Function(int) _metodo;

  Questionario(this._pergunta, this._respostas, this._metodo);

  Widget build(BuildContext contexto) {
    return Column(
      children: [
        Questao(_pergunta),
        ..._respostas.map((t) => Resposta(t['resp'], () => _metodo(t['pontos']))).toList()
      ],
    );
  }
}
