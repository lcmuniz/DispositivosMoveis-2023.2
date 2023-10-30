class Receita {
  const Receita({
    required this.id,
    required this.categorias,
    required this.titulo,
    required this.urlImagem,
    required this.ingredientes,
    required this.passos,
    required this.duracao,
    required this.complexidade,
    required this.acessibilidade,
    required this.semGluten,
    required this.semLactose,
    required this.vegano,
    required this.vegetariano,
  });

  final String id;
  final List<String> categorias;
  final String titulo;
  final String urlImagem;
  final List<String> ingredientes;
  final List<String> passos;
  final int duracao;
  final String complexidade;
  final String acessibilidade;
  final bool semGluten;
  final bool semLactose;
  final bool vegano;
  final bool vegetariano;
}
