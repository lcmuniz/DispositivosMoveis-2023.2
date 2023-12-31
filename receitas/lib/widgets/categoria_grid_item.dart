import 'package:flutter/material.dart';
import 'package:receitas/models/categoria.dart';

class CategoriaGridItem extends StatelessWidget {
  const CategoriaGridItem(
      {super.key,
      required this.categoria,
      required this.aoSelecionarCategoria});

  final Categoria categoria;
  final void Function() aoSelecionarCategoria;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: aoSelecionarCategoria,
      splashColor: Colors.amber,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              categoria.cor.withOpacity(0.5),
              categoria.cor.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          categoria.titulo,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
