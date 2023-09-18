import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

// a classe Quiz é a classe principal da aplicação/
// responsável por chamar as duas telas conforme necessário
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  // LCMUNIZ2
  final List<String> selectedAnswers = [];

  //LCMUNIZ3
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    //print(selectedAnswers.length);
    // LCMUNIZ9
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
        // LCMUNIZ DEPOIS DE CRIAR RESULTS SCREEN COMENTA ESSA LINHA
        //selectedAnswers.clear();
      });
    }
  }

  void changeScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = StartScreen(changeScreen);

    if (activeScreen == 'questions-screen') {
      // LCMUNIZ4
      screen = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
    // LCMUNIZ11
    if (activeScreen == 'results-screen') {
      screen = ResultsScreen(
        choosenAnswers: selectedAnswers,
      );
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
          child: screen,
        ),
      ),
    );
  }
}
