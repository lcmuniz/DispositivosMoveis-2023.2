import 'package:flutter/material.dart';
import 'package:login/tela_inicio.dart';
import 'package:login/tela_login.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? telaAtual;
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
          padding: const EdgeInsets.all(20),
          child: telaAtual,
        ),
      ),
    );
  }
}
