import 'package:flutter/material.dart';
import 'package:tarefas/tarefa.dart';

class TarefaItem extends StatelessWidget {
  const TarefaItem({super.key, required this.tarefa});

  final Tarefa tarefa;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          tarefa.concluida ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          tarefa.texto,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: tarefa.concluida ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
