import 'package:flutter/material.dart';

class ReceitasScreen extends StatelessWidget {
  const ReceitasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RECEITAS',
        ),
      ),
      body: const Text('RECEITAS'),
    );
  }
}
