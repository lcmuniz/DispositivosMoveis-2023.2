import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var mensagem = "";
  var numero = Random().nextInt(100) + 1;
  var palpite = 10;

  void enviarPalpite() {
    setState(() {
      if (palpite > numero) {
        mensagem = "Digite um número menor";
      } else if (palpite < numero) {
        mensagem = "Digite um número maior";
      } else {
        mensagem = "Você acertou!!!";
      }
    });
  }

  void reiniciar() {
    setState(() {
      mensagem = "";
      numero = Random().nextInt(100) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Qual o número que estou pensando?',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                ),
                child: TextField(
                  onChanged: (value) {
                    palpite = int.parse(value);
                  },
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 36),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: enviarPalpite,
                child: const Text('Enviar'),
              ),
              const SizedBox(height: 10),
              Text(
                mensagem,
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: reiniciar,
                child: const Text('Reiniciar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
