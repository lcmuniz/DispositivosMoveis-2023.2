import 'package:controler_despesas/models/despesa.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat("dd/MM/yyyy");

class NovaDespesa extends StatefulWidget {
  const NovaDespesa({super.key, required this.aoAdicionarDespesa});

  final Function(Despesa despesa) aoAdicionarDespesa;

  @override
  State<NovaDespesa> createState() => _NovaDespesaState();
}

class _NovaDespesaState extends State<NovaDespesa> {
  final _tituloController = TextEditingController();
  final _valorController = TextEditingController();
  DateTime? _dataSelecionada;
  Categoria _categoriaSelecionada = Categoria.lazer;

  @override
  void dispose() {
    _tituloController.dispose();
    _valorController.dispose();
    super.dispose();
  }

  void _mostrarCalendario() async {
    final agora = DateTime.now();
    final primeiraData = DateTime(agora.year - 1, agora.month, agora.day);

    final dataSelecionada = await showDatePicker(
        context: context,
        initialDate: agora,
        firstDate: primeiraData,
        lastDate: agora);
    setState(() {
      _dataSelecionada = dataSelecionada;
    });
  }

  void _salvarDespesa() {
    final valor = double.tryParse(_valorController.text);
    final valorInvalido = valor == null || valor <= 0;
    if (_tituloController.text.trim().isEmpty ||
        valorInvalido ||
        _dataSelecionada == null) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text("Entrada Inválida"),
          content: const Text(
              "Entre com valores válidos para título, valor, data e categoria"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("OK"))
          ],
        ),
      );
      return;
    }

    widget.aoAdicionarDespesa(Despesa(
      titulo: _tituloController.text,
      valor: valor,
      data: _dataSelecionada!,
      categoria: _categoriaSelecionada,
    ));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _tituloController,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('Título'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _valorController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixText: 'R\$',
                    label: Text('Valor'),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _dataSelecionada == null
                          ? 'Selecione a data'
                          : formatter.format(_dataSelecionada!),
                    ),
                    IconButton(
                      onPressed: _mostrarCalendario,
                      icon: const Icon(
                        Icons.calendar_month,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                value: _categoriaSelecionada,
                items: Categoria.values
                    .map(
                      (categoria) => DropdownMenuItem(
                        value: categoria,
                        child: Text(categoria.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    _categoriaSelecionada = value;
                  });
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancelar"),
              ),
              ElevatedButton(
                onPressed: _salvarDespesa,
                child: const Text("Salvar"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
