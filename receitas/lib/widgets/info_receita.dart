import 'package:flutter/material.dart';

class InfoReceita extends StatelessWidget {
  const InfoReceita({
    super.key,
    required this.icone,
    required this.texto,
  });

  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icone,
          size: 16,
          color: Colors.white,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
