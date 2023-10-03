import 'package:flutter/material.dart';
import 'package:login/tela-inicio.dart';
import 'package:login/tela-login.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var telaAtual;
  void irParaTelaInicio() {
    setState(() {
      telaAtual = TelaInicio(irParaTelaInicio);
    });
  }

  @override
  void initState() {
    super.initState();
    telaAtual = TelaLogin(irParaTelaInicio);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: telaAtual,
        ),
      ),
    );
  }
}
