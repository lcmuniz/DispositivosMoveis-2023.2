import 'package:flutter/material.dart';
import 'package:quiz_app/botao_resposta.dart';

import '../perguntas.dart';

class TelaPerguntas extends StatefulWidget {
  const TelaPerguntas(this.irParaTelaDeResultados, this.selecionarResposta,
      {super.key});

  final Function() irParaTelaDeResultados;
  final Function(String) selecionarResposta;

  @override
  State<TelaPerguntas> createState() => _TelaPerguntasState();
}

class _TelaPerguntasState extends State<TelaPerguntas> {
  var indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    void responder(resposta) {
      widget.selecionarResposta(resposta);
      setState(() {
        indiceAtual++;
      });
      if (indiceAtual == perguntas.length) {
        widget.irParaTelaDeResultados();
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          perguntas[indiceAtual].texto,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ...perguntas[indiceAtual].respostasEmbaralhadas().map(
              (resp) => BotaoResposta(
                text: resp,
                onPressed: () {
                  responder(resp);
                },
              ),
            ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
