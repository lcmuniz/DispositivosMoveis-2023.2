import 'package:flutter/material.dart';
import 'package:receitas/data/dados.dart';
import 'package:receitas/models/categoria.dart';
import 'package:receitas/screens/receitas_screen.dart';
import 'package:receitas/widgets/categoria_grid_item.dart';

class CategoriasScreen extends StatelessWidget {
  const CategoriasScreen({super.key});

  void selecionarCategoria(BuildContext context, Categoria categoria) {
    final receitas = receitasDisponiveis
        .where((receita) => receita.categorias.contains(categoria.id))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => ReceitasScreen(
          titulo: categoria.titulo,
          receitas: receitas,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Selecione uma categoria',
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.5,
        ),
        children: [
          for (Categoria categoria in categoriasDisponiveis)
            CategoriaGridItem(
              categoria: categoria,
              aoSelecionarCategoria: () {
                selecionarCategoria(context, categoria);
              },
            )
        ],
      ),
    );
  }
}
