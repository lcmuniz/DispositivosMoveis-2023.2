import 'package:flutter/material.dart';
import 'package:receitas/models/receita.dart';
import 'package:receitas/screens/receita_screen.dart';
import 'package:receitas/widgets/receita_list_item.dart';

class ReceitasScreen extends StatelessWidget {
  const ReceitasScreen({
    super.key,
    required this.titulo,
    required this.receitas,
  });

  final String titulo;
  final List<Receita> receitas;

  void selecionarReceita(BuildContext context, Receita receita) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ReceitaScreen(receita: receita)));
  }

  @override
  Widget build(BuildContext context) {
    Widget conteudo = const Center(
      child: Column(
        children: [
          Text(
            'Nenhuma refeição',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Tente selecionar outra categoria',
          )
        ],
      ),
    );

    if (receitas.isNotEmpty) {
      conteudo = ListView.builder(
        itemCount: receitas.length,
        itemBuilder: (context, index) => ReceitaListItem(
          receita: receitas[index],
          aoSelecionarReceita: (receita) {
            selecionarReceita(context, receita);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo,
        ),
      ),
      body: conteudo,
    );
  }
}
