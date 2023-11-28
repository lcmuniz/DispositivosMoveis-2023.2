import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final formatter = DateFormat("dd/MM/yyyy");

enum Categoria { alimento, viagem, lazer, trabalho }

const iconeCategoria = {
  Categoria.alimento: Icons.lunch_dining,
  Categoria.viagem: Icons.flight_takeoff,
  Categoria.lazer: Icons.movie,
  Categoria.trabalho: Icons.work,
};

class Despesa {
  Despesa({
    required this.titulo,
    required this.valor,
    required this.data,
    required this.categoria,
  }) : id = uuid.v4();

  final String id;
  final String titulo;
  final double valor;
  final DateTime data;
  final Categoria categoria;

  String get dataBr {
    return formatter.format(data);
  }
}
