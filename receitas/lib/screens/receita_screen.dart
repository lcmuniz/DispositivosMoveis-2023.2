import 'package:flutter/material.dart';
import 'package:receitas/models/receita.dart';

class ReceitaScreen extends StatelessWidget {
  const ReceitaScreen({super.key, required this.receita});

  final Receita receita;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(receita.titulo),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                receita.urlImagem,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 14),
              const Text(
                'Ingredientes',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 285, 107, 6),
                ),
              ),
              const SizedBox(height: 14),
              for (String ingrediente in receita.ingredientes)
                Text(
                  ingrediente,
                  style: const TextStyle(fontSize: 14),
                ),
              const SizedBox(height: 14),
              const Text(
                'Passos',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 285, 107, 6),
                ),
              ),
              const SizedBox(height: 14),
              for (String passo in receita.passos)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    passo,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
            ],
          ),
        ));
  }
}
