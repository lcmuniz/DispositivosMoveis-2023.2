import 'package:flutter/material.dart';
import 'package:tarefas/tarefa.dart';

class TarefaItem extends StatefulWidget {
  const TarefaItem(
      {super.key, required this.tarefa, required this.excluirTarefa});

  final Tarefa tarefa;
  final Function excluirTarefa;

  @override
  State<TarefaItem> createState() => _TarefaItemState();
}

class _TarefaItemState extends State<TarefaItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: ListTile(
        onTap: () {
          setState(() {
            widget.tarefa.concluida = !widget.tarefa.concluida;
          });
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          widget.tarefa.concluida
              ? Icons.check_box
              : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          widget.tarefa.texto,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration:
                  widget.tarefa.concluida ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          onPressed: () {
            widget.excluirTarefa(widget.tarefa);
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
