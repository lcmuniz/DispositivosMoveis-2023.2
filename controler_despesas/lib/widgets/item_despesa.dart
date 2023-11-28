import 'package:controler_despesas/models/despesa.dart';
import 'package:flutter/material.dart';

class ItemDespesa extends StatelessWidget {
  const ItemDespesa({super.key, required this.despesa});

  final Despesa despesa;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(despesa.titulo),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('R\$ ${despesa.valor.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(iconeCategoria[despesa.categoria]),
                    const SizedBox(width: 8),
                    Text(despesa.dataBr),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
