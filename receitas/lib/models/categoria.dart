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

  factory Categoria.fromJson(Map<String, dynamic> json) {
    return Categoria(
        id: json["id"],
        titulo: json["titulo"],
        cor: Color(int.parse(json["cor"])));
  }
}
