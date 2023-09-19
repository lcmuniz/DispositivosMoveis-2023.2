import 'package:flutter/material.dart';
import 'package:quiz_app/perguntas.dart';
import 'package:quiz_app/screens/tela_perguntas.dart';
import 'package:quiz_app/screens/tela_resultados.dart';
import 'package:quiz_app/screens/tela_inicio.dart';

// a classe Quiz é a classe principal da aplicação/
// responsável por chamar as duas telas conforme necessário
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var telaAtiva = 'tela-inicio';

  List<String> respostasSelecionas = [];

  void selecionarResposta(String resposta) {
    respostasSelecionas.add(resposta);
    print(respostasSelecionas.length);
    if (respostasSelecionas.length == perguntas.length) {
      respostasSelecionas.clear();
    }
  }

  void irParaTelaDeInicio() {
    setState(() {
      telaAtiva = 'tela-inicio';
    });
  }

  void irParaTelaDePerguntas() {
    setState(() {
      telaAtiva = 'tela-perguntas';
    });
  }

  void irParaTeleDeResultados() {
    setState(() {
      telaAtiva = 'tela-resultados';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget tela = TelaInicio(irParaTelaDePerguntas);

    if (telaAtiva == 'tela-perguntas') {
      tela = TelaPerguntas(irParaTeleDeResultados, selecionarResposta);
    }

    if (telaAtiva == 'tela-resultados') {
      tela = TelaResultados(irParaTelaDeInicio);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: tela,
        ),
      ),
    );
  }
}
