class Pergunta {
  const Pergunta(this.texto, this.respostas);
  final String texto;
  final List<String> respostas;

  List<String> respostasEmbaralhadas() {
    var embaralhadas = [...respostas];
    embaralhadas.shuffle();
    return embaralhadas;
  }
}
