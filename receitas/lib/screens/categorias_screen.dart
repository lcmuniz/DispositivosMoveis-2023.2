import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:receitas/data/dados.dart';
import 'package:receitas/models/categoria.dart';
import 'package:receitas/screens/receitas_screen.dart';
import 'package:receitas/widgets/categoria_grid_item.dart';

class CategoriasScreen extends StatefulWidget {
  const CategoriasScreen({super.key});

  @override
  State<CategoriasScreen> createState() => _CategoriasScreenState();
}

class _CategoriasScreenState extends State<CategoriasScreen> {
  late Future<List<Categoria>> futureCategorias;
  Future<List<Categoria>> fetchCategorias() async {
    var uri = Uri.parse("http://192.168.15.55:3000/categorias");

    var response = await http.get(uri);

    if (response.statusCode == 200) {
      // transformar o body numa lista de categorias
      List<dynamic> lista = jsonDecode(response.body);
      List<Categoria> categoriasList = List<Categoria>.from(
          lista.map<Categoria>((dynamic i) => Categoria.fromJson(i)));

      return categoriasList;
    } else {
      throw Exception("Falha ao carregar categorias");
    }
  }

  @override
  void initState() {
    futureCategorias = fetchCategorias();
    super.initState();
  }

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
      body: FutureBuilder(
          future: futureCategorias,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView(
                padding: const EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.5,
                ),
                children: [
                  for (Categoria categoria in snapshot.data!)
                    CategoriaGridItem(
                      categoria: categoria,
                      aoSelecionarCategoria: () {
                        selecionarCategoria(context, categoria);
                      },
                    )
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
    );
  }
}
