import 'package:controler_despesas/models/despesa.dart';
import 'package:controler_despesas/widgets/lista_despesas.dart';
import 'package:controler_despesas/widgets/nova_despesa.dart';
import 'package:flutter/material.dart';

class Despesas extends StatefulWidget {
  const Despesas({super.key});

  @override
  State<Despesas> createState() => _DespesasState();
}

class _DespesasState extends State<Despesas> {
  final List<Despesa> _despesas = [
    Despesa(
      titulo: "Curso de Flutter",
      valor: 199.99,
      data: DateTime.now(),
      categoria: Categoria.trabalho,
    ),
    Despesa(
      titulo: "Livro O Alienista",
      valor: 19.99,
      data: DateTime.now(),
      categoria: Categoria.lazer,
    ),
  ];

  void _abrirCadastroDespesa() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return NovaDespesa(
            aoAdicionarDespesa: _adicionarDespesa,
          );
        });
  }

  void _adicionarDespesa(Despesa despesa) {
    setState(() {
      _despesas.add(despesa);
    });
  }

  void _excluirDespesa(Despesa despesa) {
    final indiceDespesa = _despesas.indexOf(despesa);
    setState(() {
      _despesas.remove(despesa);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Despesa excluída'),
        action: SnackBarAction(
          label: 'Desfazer',
          onPressed: () {
            setState(() {
              _despesas.insert(indiceDespesa, despesa);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Controle de Despesas"),
        actions: [
          IconButton(
            onPressed: _abrirCadastroDespesa,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Gráficos'),
          Expanded(
            child: ListaDespesas(
              aoExcluirDespesa: _excluirDespesa,
              despesas: _despesas,
            ),
          ),
        ],
      ),
    );
  }
}
