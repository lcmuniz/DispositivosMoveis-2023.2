import 'package:flutter/material.dart';

class Tabuleiro extends StatelessWidget {
  const Tabuleiro({
    super.key,
    required this.listaOX,
    required this.aoClicar,
  });

  final Function aoClicar;
  final List<String> listaOX;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: GridView.builder(
          itemCount: 9,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                aoClicar(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Center(
                  child: Text(
                    listaOX[index],
                    style: TextStyle(
                      color: listaOX[index] == 'x' ? Colors.white : Colors.red,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
