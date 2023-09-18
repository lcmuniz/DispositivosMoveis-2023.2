import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';

import '../questions.dart';

class QuestionsScreen extends StatefulWidget {
  //LCMUNIZ6
  const QuestionsScreen({super.key, required this.onSelectedAnswer});

  //LMUNIZ5
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    void responder(String selectedAnswer) {
      //LCMUNIZ7
      widget.onSelectedAnswer(selectedAnswer);
      setState(() {
        indiceAtual++;
        if (indiceAtual == questions.length) {
          indiceAtual = 0;
        }
      });
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questions[indiceAtual].text,
          textAlign: TextAlign.center,
          // LCMUNIZ1
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 201, 153, 251),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        ...questions[indiceAtual].answers.map(
              (resp) => AnswerButton(
                text: resp,
                // LCMUNIZ8
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
