import 'package:flutter/material.dart';

import 'package:receitas/models/categoria.dart';
import 'package:receitas/models/receita.dart';

const xcategoriasDisponiveis = [
  Categoria(
    id: 'c1',
    titulo: 'Italiana',
    cor: Colors.purple,
  ),
  Categoria(
    id: 'c2',
    titulo: 'Rápido & Fácil',
    cor: Colors.red,
  ),
  Categoria(
    id: 'c3',
    titulo: 'Hamburgers',
    cor: Colors.orange,
  ),
  Categoria(
    id: 'c4',
    titulo: 'Alemã',
    cor: Colors.amber,
  ),
  Categoria(
    id: 'c5',
    titulo: 'Light',
    cor: Colors.blue,
  ),
  Categoria(
    id: 'c6',
    titulo: 'Exótica',
    cor: Colors.green,
  ),
  Categoria(
    id: 'c7',
    titulo: 'Café da manhã',
    cor: Colors.lightBlue,
  ),
  Categoria(
    id: 'c8',
    titulo: 'Asiática',
    cor: Colors.lightGreen,
  ),
  Categoria(
    id: 'c9',
    titulo: 'Francesa',
    cor: Colors.pink,
  ),
  Categoria(
    id: 'c10',
    titulo: 'Verão',
    cor: Colors.teal,
  ),
];

const receitasDisponiveis = [
  Receita(
    id: 'm1',
    categorias: [
      'c1',
      'c2',
    ],
    titulo: 'Espaguete com Molho de Tomate',
    acessibilidade: 'acessivel',
    complexidade: 'simples',
    urlImagem:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duracao: 20,
    ingredientes: [
      '4 Tomates',
      '1 Colher de Sopa de Azeite de Oliva',
      '1 Cebola',
      '250g de Espaguete',
      'Especiarias',
      'Queijo (opcional)'
    ],
    passos: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - deve ficar pronto em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça um pouco de azeite de oliva e adicione a cebola cortada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e suas outras especiarias.',
      'O molho estará pronto quando o espaguete estiver.',
      'Sinta-se à vontade para adicionar um pouco de queijo por cima do prato pronto.'
    ],
    semGluten: false,
    vegano: true,
    vegetariano: true,
    semLactose: true,
  ),
  Receita(
    id: 'm2',
    categorias: [
      'c2',
    ],
    titulo: 'Toast Hawaii',
    acessibilidade: 'acessivel',
    complexidade: 'simples',
    urlImagem:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duracao: 10,
    ingredientes: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga'
    ],
    passos: [
      'Passe manteiga em um lado do pão branco',
      'Coloque o presunto, o abacaxi e o queijo sobre o pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C'
    ],
    semGluten: false,
    vegano: false,
    vegetariano: false,
    semLactose: false,
  ),
  Receita(
    id: 'm4',
    categorias: [
      'c4',
    ],
    titulo: 'Wiener Schnitzel',
    acessibilidade: 'luxuoso',
    complexidade: 'desafiador',
    urlImagem:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duracao: 60,
    ingredientes: [
      '8 Costeletas de Vitela',
      '4 Ovos',
      '200g de Farinha de Rosca',
      '100g de Farinha de Trigo',
      '300ml de Manteiga',
      '100g de Óleo Vegetal',
      'Sal',
      'Fatias de Limão'
    ],
    passos: [
      'Amacie a vitela até cerca de 2-4mm e tempere dos dois lados com sal.',
      'Em um prato raso, bata os ovos brevemente com um garfo.',
      'Empane levemente as costeletas com farinha e depois mergulhe no ovo e, por fim, empane na farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma frigideira grande (deixe a gordura ficar bem quente) e frite os schnitzels até dourarem dos dois lados.',
      'Certifique-se de mexer a frigideira regularmente para que os schnitzels fiquem rodeados pelo óleo e a cobertura fique "fofa".',
      'Retire e escorra sobre papel toalha. Frite a salsinha no óleo restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva decorado com salsinha e fatias de limão.'
    ],
    semGluten: false,
    vegano: false,
    vegetariano: false,
    semLactose: false,
  ),
  Receita(
    id: 'm5',
    categorias: [
      'c2',
      'c5',
      'c10',
    ],
    titulo: 'Salada com Salmão Defumado',
    acessibilidade: 'luxuoso',
    complexidade: 'simples',
    urlImagem:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duracao: 15,
    ingredientes: [
      'Rúcula',
      'Alface-de-Cordero',
      'Salsinha',
      'Funcho',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre Balsâmico',
      'Azeite de Oliva',
      'Sal e Pimenta'
    ],
    passos: [
      'Lave, pique e corte a salada e as ervas',
      'Corte o salmão em cubos',
      'Prepare o molho com mostarda, vinagre e azeite de oliva',
      'Misture a salada',
      'Adicione os cubos de salmão e o molho'
    ],
    semGluten: true,
    vegano: false,
    vegetariano: true,
    semLactose: true,
  ),
  Receita(
    id: 'm6',
    categorias: [
      'c6',
      'c10',
    ],
    titulo: 'Mousse de Laranja Deliciosa',
    acessibilidade: 'acessivel',
    complexidade: 'dificil',
    urlImagem:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duracao: 240,
    ingredientes: [
      '4 Folhas de Gelatina',
      '150ml de Suco de Laranja',
      '80g de Açúcar',
      '300g de Iogurte',
      '200g de Creme de Leite',
      'Casca de Laranja',
    ],
    passos: [
      'Dissolva a gelatina em uma panela',
      'Adicione o suco de laranja e o açúcar',
      'Retire a panela do fogo',
      'Adicione 2 colheres de sopa de iogurte',
      'Misture a gelatina com o restante do iogurte',
      'Deixe esfriar na geladeira',
      'Bata o creme de leite até ficar firme e incorpore na mistura de laranja',
      'Deixe esfriar novamente por pelo menos 4 horas',
      'Sirva com casca de laranja',
    ],
    semGluten: true,
    vegano: false,
    vegetariano: true,
    semLactose: false,
  ),
  Receita(
    id: 'm7',
    categorias: [
      'c7',
    ],
    titulo: 'Panquecas',
    acessibilidade: 'acessivel',
    complexidade: 'simples',
    urlImagem:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duracao: 20,
    ingredientes: [
      '1 1/2 xícaras de Farinha de Trigo',
      '3 1/2 colheres de chá de Fermento em Pó',
      '1 colher de chá de Sal',
      '1 colher de sopa de Açúcar Branco',
      '1 1/4 xícaras de Leite',
      '1 Ovo',
      '3 colheres de sopa de Manteiga derretida',
    ],
    passos: [
      'Em uma tigela grande, peneire a farinha de trigo, o fermento em pó, o sal e o açúcar.',
      'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.',
      'Aqueça uma frigideira levemente untada ou uma chapa em fogo médio-alto.',
      'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Doure dos dois lados e sirva quente.'
    ],
    semGluten: true,
    vegano: false,
    vegetariano: true,
    semLactose: false,
  ),
  Receita(
    id: 'm8',
    categorias: [
      'c8',
    ],
    titulo: 'Curry de Frango Indiano Cremoso',
    acessibilidade: 'caro',
    complexidade: 'desafiador',
    urlImagem:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duracao: 35,
    ingredientes: [
      '4 Peitos de Frango',
      '1 Cebola',
      '2 Dentes de Alho',
      '1 Pedaço de Gengibre',
      '4 Colheres de Sopa de Amêndoas',
      '1 Colher de Chá de Pimenta Caiena',
      '500ml de Leite de Coco',
    ],
    passos: [
      'Corte e frite o peito de frango',
      'Processe a cebola, o alho e o gengibre em uma pasta e refogue tudo',
      'Adicione os temperos e refogue',
      'Adicione o peito de frango + 250ml de água e cozinhe por 10 minutos',
      'Adicione o leite de coco',
      'Sirva com arroz'
    ],
    semGluten: true,
    vegano: false,
    vegetariano: false,
    semLactose: true,
  ),
  Receita(
    id: 'm9',
    categorias: [
      'c9',
    ],
    titulo: 'Suflê de Chocolate',
    acessibilidade: 'acessivel',
    complexidade: 'dificil',
    urlImagem:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duracao: 45,
    ingredientes: [
      '1 Colher de Chá de Manteiga Derretida',
      '2 Colheres de Sopa de Açúcar Branco',
      '2 Onças de Chocolate Amargo a 70%, quebrado em pedaços',
      '1 Colher de Sopa de Manteiga',
      '1 Colher de Sopa de Farinha de Trigo',
      '4 1/3 colheres de sopa de Leite Gelado',
      '1 Pitada de Sal',
      '1 Pitada de Pimenta Caiena',
      '1 Gema de Ovo Grande',
      '2 Claras de Ovo Grandes',
      '1 Pitada de Creme de Tártaro',
      '1 Colher de Sopa de Açúcar Branco',
    ],
    passos: [
      'Pré-aqueça o forno a 190°C. Forre uma assadeira com papel manteiga.',
      'Pincele levemente o fundo e os lados de 2 ramequins com 1 colher de chá de manteiga derretida; cubra o fundo e os lados até a borda.',
      'Adicione 1 colher de sopa de açúcar branco nos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.',
      'Coloque os pedaços de chocolate em uma tigela de metal.',
      'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.',
      'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe a farinha. Mexa até que a farinha se incorpore à manteiga e a mistura engrosse.',
      'Misture o leite frio até que a mistura fique suave e espessa. Transfira a mistura para a tigela com chocolate derretido.',
      'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture para combinar.',
      'Deixe a tigela acima da água quente (não fervente) para manter o chocolate quente enquanto você bate as claras em neve.',
      'Coloque 2 claras de ovo em uma tigela; adicione o creme de tártaro. Bata até que a mistura comece a engrossar e um fio da batida fique na superfície por cerca de 1 segundo antes de desaparecer na mistura.',
      'Adicione 1/3 de açúcar e misture. Bata um pouco mais de açúcar por cerca de 15 segundos.',
      'Bata o restante do açúcar. Continue batendo até que a mistura fique com a consistência de creme de barbear e forme picos suaves, de 3 a 5 minutos.',
      'Transfira um pouco menos da metade das claras de ovo para o chocolate.',
      'Misture até que as claras de ovo estejam completamente incorporadas ao chocolate.',
      'Adicione o restante das claras de ovo; misture delicadamente no chocolate com uma espátula, levantando de baixo para cima e dobrando sobre.',
      'Pare de misturar depois que a clara de ovo desaparecer. Divida a mistura entre os 2 ramequins preparados. Coloque os ramequins na assadeira preparada.',
      'Asse no forno pré-aquecido até que os suflês estejam crescidos e tenham subido acima da borda, de 12 a 15 minutos.',
    ],
    semGluten: true,
    vegano: false,
    vegetariano: true,
    semLactose: false,
  ),
  Receita(
    id: 'm10',
    categorias: [
      'c2',
      'c5',
      'c10',
    ],
    titulo: 'Salada de Aspargos com Tomates Cereja',
    acessibilidade: 'luxuoso',
    complexidade: 'simples',
    urlImagem:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duracao: 30,
    ingredientes: [
      'Aspargos Brancos e Verdes',
      '30g de Pinhões',
      '300g de Tomates Cereja',
      'Salada',
      'Sal, Pimenta e Azeite de Oliva',
    ],
    passos: [
      'Lave, descasque e corte os aspargos',
      'Cozinhe em água salgada',
      'Salgue e tempere os aspargos',
      'Toste os pinhões',
      'Corte os tomates ao meio',
      'Misture com os aspargos, salada e molho',
      'Sirva com Baguete',
    ],
    semGluten: true,
    vegano: true,
    vegetariano: true,
    semLactose: true,
  ),
];
