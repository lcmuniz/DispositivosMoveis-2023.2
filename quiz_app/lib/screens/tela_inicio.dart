import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio(this.iniciarQuiz, {super.key});

  final Function() iniciarQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Aprenda Flutter !",
            style: GoogleFonts.croissantOne(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 237, 223, 252),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            onPressed: iniciarQuiz,
            icon: const Icon(Icons.arrow_forward),
            label: const Text(
              'Iniciar Quiz',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
