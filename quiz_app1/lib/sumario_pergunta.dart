import 'package:flutter/material.dart';
import 'package:quiz_app/pergunta.dart';

class SumarioPergunta extends StatelessWidget {
  const SumarioPergunta(this.pergunta, {super.key});

  final Pergunta pergunta;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Pergunta: ' + pergunta.texto,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        Text('Resposta correta: ' + pergunta.respostas[0],
            style: TextStyle(color: Colors.white)),
        Text('Sua resposta: asdasd', style: TextStyle(color: Colors.white)),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
