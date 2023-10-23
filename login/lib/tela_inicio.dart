import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  const TelaInicio(this.irPara, {super.key});

  final Function() irPara;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('TELA INICIO'),
      ],
    );
  }
}
