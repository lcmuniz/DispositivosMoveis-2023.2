import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

import '../questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    void responder() {
      setState(() {
        indiceAtual++;
        if (indiceAtual == questions.length) {
          indiceAtual = 0;
        }
      });
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[indiceAtual].text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ...questions[indiceAtual].answers.map(
                (resp) => AnswerButton(
                  text: resp,
                  onPressed: responder,
                ),
              ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
