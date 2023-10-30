import 'package:flutter/material.dart';

class Categoria {
  const Categoria({
    required this.id,
    required this.titulo,
    required this.cor,
  });

  final String id;
  final String titulo;
  final Color cor;
}
