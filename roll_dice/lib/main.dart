import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const RollDice());

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

var random = Random();

class _RollDiceState extends State<RollDice> {
  var activeImage = "assets/images/dice-3.png";

  @override
  Widget build(BuildContext context) {
    void rollDice() {
      var number = random.nextInt(6) + 1;
      setState(() {
        activeImage = "assets/images/dice-$number.png";
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 51, 19, 105),
                Colors.deepPurple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(activeImage, width: 250),
              TextButton(
                onPressed: rollDice,
                child: const Text(
                  "ROLL DICE",
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
