class Tarefa {
  int id;
  String texto;
  bool concluida;

  Tarefa({required this.id, required this.texto, this.concluida = false});

  static List<Tarefa> listaDeTarefas() {
    return [
      Tarefa(id: 1, texto: 'Café da manhã', concluida: true),
      Tarefa(id: 1, texto: 'Comprar coisas', concluida: true),
      Tarefa(id: 1, texto: 'Almoço', concluida: true),
      Tarefa(id: 1, texto: 'Academia', concluida: true),
      Tarefa(id: 1, texto: 'Estudar', concluida: true),
      Tarefa(id: 1, texto: 'Assistir filmes'),
      Tarefa(id: 1, texto: 'Estudar'),
      Tarefa(id: 1, texto: 'Jantar'),
      Tarefa(id: 1, texto: 'dormir'),
    ];
  }
}
