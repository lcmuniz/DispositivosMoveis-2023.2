class Tarefa {
  int id;
  String texto;
  bool concluida;

  Tarefa({required this.id, required this.texto, this.concluida = false});

  static List<Tarefa> listaDeTarefas() {
    return [
      Tarefa(id: 1, texto: 'Café da manhã', concluida: true),
      Tarefa(id: 2, texto: 'Comprar coisas', concluida: true),
      Tarefa(id: 3, texto: 'Almoço', concluida: true),
      Tarefa(id: 4, texto: 'Academia', concluida: true),
      Tarefa(id: 5, texto: 'Estudar', concluida: true),
      Tarefa(id: 6, texto: 'Assistir filmes'),
      Tarefa(id: 7, texto: 'Estudar'),
      Tarefa(id: 8, texto: 'Jantar'),
      Tarefa(id: 9, texto: 'dormir'),
    ];
  }
}
