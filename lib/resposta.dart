import 'package:flutter/material.dart';

// class Resposta extends StatelessWidget {
//   final int pergunta;
//   final respostas = [
//     ['Preto', 'Branco', 'Cinza', 'Azul', 'Verde', 'Vermelho', 'Amarelo'],
//     ['Cachorro', 'Gato', 'Pássaro', 'Hamster'],
//     ['1', '2', '3']
//   ];
//   Resposta(this.pergunta);

//   List<Widget> _possiveisRespostas() {
//     List<Widget> resp;
//     for (final r in respostas[pergunta]) {
//       resp.add(RaisedButton(
//         textColor: Colors.white,
//         color: Colors.blue,
//         child: Text(r),
//         onPressed: null,
//       ));
//     }
//     print(resp.length);
//     return resp;
//   }

//   Widget build(BuildContext contexto) {
//     return Column(children: _possiveisRespostas());
//   }
// }

import 'package:flutter/cupertino.dart';

class Resposta extends StatelessWidget {
  final String _resposta;
  final void Function() _quandoClicado;
  Resposta(this._resposta, this._quandoClicado);

  Widget build(BuildContext contexto) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(_resposta),
          onPressed: _quandoClicado,
        ));
  }
}
