import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaAppEstado extends State<PerguntaApp> {
  int _perguntaSelecionada = 0;
  int pontos = 0;

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  static List<Map<String, List<Object>>> _perguntas = [
    {
      'pergunta': ['Qual é sua cor preferida?'],
      'resposta': [
        {'resp': 'Preto', 'pontos': 10},
        {'resp': 'Cinza', 'pontos': 9},
        {'resp': 'Azul', 'pontos': 4},
        {'resp': 'Vermelho', 'pontos': 12},
        {'resp': 'Verde', 'pontos': 8},
        {'resp': 'Amarelo', 'pontos': 9}
      ]
    },
    {
      'pergunta': ['Qual é o seu animal preferido?'],
      'resposta': [
        {'resp': 'Cachorro', 'pontos': 7},
        {'resp': 'Gato', 'pontos': 14},
        {'resp': 'Ave', 'pontos': 5}
      ]
    },
    {
      'pergunta': ['Qual seu número preferido?'],
      'resposta': [
        {'resp': '1', 'pontos': 5},
        {'resp': '2', 'pontos': 5},
        {'resp': '3', 'pontos': 5}
      ]
    }
  ];

  void _responder(int ponto) {
    setState(() {
      _perguntaSelecionada++;
      pontos += ponto;
    });
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      pontos = 0;
    });
  }

  Widget build(BuildContext cotexto) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Perguntas'),
            ),
            body: temPerguntaSelecionada
                ? Questionario(_perguntas[_perguntaSelecionada]['pergunta'][0],
                    _perguntas[_perguntaSelecionada]['resposta'], _responder)
                : Resultado(pontos.toString() + ' Pontos.', _reiniciar)));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppEstado createState() {
    return PerguntaAppEstado();
  }
}
