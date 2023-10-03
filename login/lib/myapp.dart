import 'package:flutter/material.dart';
import 'package:login/tela-login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: TelaLogin(),
        ),
      ),
    );
  }
}
