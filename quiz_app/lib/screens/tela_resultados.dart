import 'package:flutter/material.dart';
import 'package:quiz_app/perguntas.dart';
import 'package:quiz_app/sumario_pergunta.dart';

class TelaResultados extends StatelessWidget {
  const TelaResultados(this.irParaTelaDeInicio, {super.key});

  final Function() irParaTelaDeInicio;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Você responder X de Y perguntas corretamente!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ...perguntas
                  .map(
                    (perg) => SumarioPergunta(perg),
                  )
                  .toList(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: irParaTelaDeInicio,
            child: const Text(
              'Reiniciar Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
