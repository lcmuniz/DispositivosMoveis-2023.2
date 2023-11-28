import 'package:controler_despesas/models/despesa.dart';
import 'package:controler_despesas/widgets/item_despesa.dart';
import 'package:flutter/widgets.dart';

class ListaDespesas extends StatelessWidget {
  const ListaDespesas({
    super.key,
    required this.despesas,
    required this.aoExcluirDespesa,
  });

  final List<Despesa> despesas;
  final Function(Despesa despesa) aoExcluirDespesa;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: despesas.length,
      itemBuilder: (ctx, idx) => Dismissible(
        key: ValueKey(despesas[idx]),
        onDismissed: (direction) {
          aoExcluirDespesa(despesas[idx]);
        },
        child: ItemDespesa(
          despesa: despesas[idx],
        ),
      ),
    );
  }
}
