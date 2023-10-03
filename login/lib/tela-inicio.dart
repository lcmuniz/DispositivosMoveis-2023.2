import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  TelaInicio(this.irPara, {super.key});

  Function() irPara;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('TELA INICIO'),
      ],
    );
  }
}
