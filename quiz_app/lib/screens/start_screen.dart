import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void iniciarQuiz() {
      print("sadjalksdjlksadjlsakd");
    }

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
          const Text(
            "Aprenda Flutter !",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 237, 223, 252),
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
