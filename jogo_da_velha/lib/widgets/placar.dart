// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Placar extends StatelessWidget {
  const Placar({
    super.key,
    required this.pontosX,
    required this.pontosO,
  });

  final int pontosX;
  final int pontosO;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Jogador O',
                  style: const TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                Text(
                  pontosX.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Jogador X',
                  style: const TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 20),
                Text(
                  pontosO.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
