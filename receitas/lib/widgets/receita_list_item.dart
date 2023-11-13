import 'package:flutter/material.dart';
import 'package:receitas/models/receita.dart';
import 'package:receitas/widgets/info_receita.dart';
import 'package:transparent_image/transparent_image.dart';

class ReceitaListItem extends StatelessWidget {
  const ReceitaListItem({super.key, required this.receita});

  final Receita receita;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(receita.urlImagem),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 40,
                ),
                child: Column(
                  children: [
                    Text(
                      receita.titulo,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InfoReceita(
                          icone: Icons.schedule,
                          texto: '${receita.duracao} min',
                        ),
                        const SizedBox(width: 12),
                        InfoReceita(
                          icone: Icons.work,
                          texto: receita.complexidade,
                        ),
                        const SizedBox(width: 12),
                        InfoReceita(
                          icone: Icons.attach_money,
                          texto: receita.acessibilidade,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
