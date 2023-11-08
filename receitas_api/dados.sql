create table categorias (
  id text primary key not null,
  titulo text not null,
  cor text not null
);

create table receitas (
  id text primary key not null,
  categorias text[] not null,
  titulo text not null,
  acessibilidade text not null,
  complexidade text not null,
  url_imagem text not null,
  duracao INT not null,
  ingredientes text[] not null,
  passos text[] not null,
  sem_gluten BOOLEAN not null,
  vegano BOOLEAN not null,
  vegetariano BOOLEAN not null,
  sem_lactose BOOLEAN not null
);

insert into categorias (id, titulo, cor)
values 
  ('c1', 'Italiana', 'purple'),
  ('c2', 'Rápido & Fácil', 'red'),
  ('c3', 'Hamburgers', 'orange'),
  ('c4', 'Alemã', 'amber'),
  ('c5', 'Light', 'blue'),
  ('c6', 'Exótica', 'green'),
  ('c7', 'Café da manhã', 'lightblue'),
  ('c8', 'Asiática', 'lightgreen'),
  ('c9', 'Francesa', 'pink'),
  ('c10', 'Verão', 'teal');


INSERT INTO receitas (id, categorias, titulo, acessibilidade, complexidade, url_imagem, duracao, ingredientes, passos, sem_gluten, vegano, vegetariano, sem_lactose)
VALUES 
  ('m1', ARRAY['c1', 'c2'], 'Espaguete com Molho de Tomate', 'acessivel', 'simples', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg', 20, 
    ARRAY['4 Tomates', '1 Colher de Sopa de Azeite de Oliva', '1 Cebola', '250g de Espaguete', 'Especiarias', 'Queijo (opcional)'], 
    ARRAY['Corte os tomates e a cebola em pedaços pequenos.', 'Ferva água - adicione sal quando ferver.', 'Coloque o espaguete na água fervente - deve ficar pronto em cerca de 10 a 12 minutos.', 'Enquanto isso, aqueça um pouco de azeite de oliva e adicione a cebola cortada.', 'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e suas outras especiarias.', 'O molho estará pronto quando o espaguete estiver.', 'Sinta-se à vontade para adicionar um pouco de queijo por cima do prato pronto.'], 
    false, true, true, true),
  ('m2', ARRAY['c2'], 'Toast Hawaii', 'acessivel', 'simples', 'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg', 10, 
    ARRAY['1 Fatia de Pão Branco', '1 Fatia de Presunto', '1 Fatia de Abacaxi', '1-2 Fatias de Queijo', 'Manteiga'], 
    ARRAY['Passe manteiga em um lado do pão branco', 'Coloque o presunto, o abacaxi e o queijo sobre o pão branco', 'Asse a torrada por cerca de 10 minutos no forno a 200°C'], 
    false, false, false, false),
  ('m3', ARRAY['c3'], 'Receita 3', 'acessivel', 'simples', 'https://via.placeholder.com/150', 30, 
    ARRAY['Ingrediente A', 'Ingrediente B', 'Ingrediente C'], 
    ARRAY['Passo 1', 'Passo 2', 'Passo 3'], 
    false, false, false, false),
  ('m4', ARRAY['c4'], 'Wiener Schnitzel', 'luxuoso', 'desafiador', 'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg', 60, 
    ARRAY['8 Costeletas de Vitela', '4 Ovos', '200g de Farinha de Rosca', '100g de Farinha de Trigo', '300ml de Manteiga', '100g de Óleo Vegetal', 'Sal', 'Fatias de Limão'], 
    ARRAY['Amacie a vitela até cerca de 2-4mm e tempere dos dois lados com sal.', 'Em um prato raso, bata os ovos brevemente com um garfo.', 'Empane levemente as costeletas com farinha e depois mergulhe no ovo e, por fim, empane na farinha de rosca.', 'Aqueça a manteiga e o óleo em uma frigideira grande (deixe a gordura ficar bem quente) e frite os schnitzels até dourarem dos dois lados.', 'Certifique-se de mexer a frigideira regularmente para que os schnitzels fiquem rodeados pelo óleo e a cobertura fique "fofa".', 'Retire e escorra sobre papel toalha. Frite a salsinha no óleo restante e escorra.', 'Coloque os schnitzels em um prato aquecido e sirva decorado com salsinha e fatias de limão.'], 
    false, false, false, false),
  ('m5', ARRAY['c2', 'c5', 'c10'], 'Salada com Salmão Defumado', 'luxuoso', 'simples', 'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg', 15, 
    ARRAY['Rúcula', 'Alface-de-Cordero', 'Salsinha', 'Funcho', '200g de Salmão Defumado', 'Mostarda', 'Vinagre Balsâmico', 'Azeite de Oliva', 'Sal e Pimenta'], 
    ARRAY['Lave, pique e corte a salada e as ervas', 'Corte o salmão em cubos', 'Prepare o molho com mostarda, vinagre e azeite de oliva', 'Misture a salada', 'Adicione os cubos de salmão e o molho'], 
    true, false, true, true),
  ('m6', ARRAY['c6', 'c10'], 'Mousse de Laranja Deliciosa', 'acessivel', 'dificil', 'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg', 240, 
    ARRAY['4 Folhas de Gelatina', '150ml de Suco de Laranja', '80g de Açúcar', '300g de Iogurte', '200g de Creme de Leite', 'Casca de Laranja'], 
    ARRAY['Dissolva a gelatina em uma panela', 'Adicione o suco de laranja e o açúcar', 'Retire a panela do fogo', 'Adicione 2 colheres de sopa de iogurte', 'Misture a gelatina com o restante do iogurte', 'Deixe esfriar na geladeira', 'Bata o creme de leite até ficar firme e incorpore na mistura de laranja', 'Deixe esfriar novamente por pelo menos 4 horas', 'Sirva com casca de laranja'], 
    true, false, true, false),
  ('m7', ARRAY['c7'], 'Panquecas', 'acessivel', 'simples', 'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg', 20, 
    ARRAY['1 1/2 xícaras de Farinha de Trigo', '3 1/2 colheres de chá de Fermento em Pó', '1 colher de chá de Sal', '1 colher de sopa de Açúcar Branco', '1 1/4 xícaras de Leite', '1 Ovo', '3 colheres de sopa de Manteiga derretida'], 
    ARRAY['Em uma tigela grande, peneire a farinha de trigo, o fermento em pó, o sal e o açúcar.', 'Faça um buraco no centro e despeje o leite, o ovo e a manteiga derretida; misture até ficar homogêneo.', 'Aqueça uma frigideira levemente untada ou uma chapa em fogo médio-alto.', 'Despeje ou coloque a massa na frigideira, usando aproximadamente 1/4 de xícara para cada panqueca. Doure dos dois lados e sirva quente.'], 
    true, false, true, false),
  ('m8', ARRAY['c8'], 'Curry de Frango Indiano Cremoso', 'caro', 'desafiador', 'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg', 35, 
    ARRAY['4 Peitos de Frango', '1 Cebola', '2 Dentes de Alho', '1 Pedaço de Gengibre', '4 Colheres de Sopa de Amêndoas', '1 Colher de Chá de Pimenta Caiena', '500ml de Leite de Coco'], 
    ARRAY['Corte e frite o peito de frango', 'Processe a cebola, o alho e o gengibre em uma pasta e refogue tudo', 'Adicione os temperos e refogue', 'Adicione o peito de frango + 250ml de água e cozinhe por 10 minutos', 'Adicione o leite de coco', 'Sirva com arroz'], 
    true, false, false, true),
  ('m9', ARRAY['c9'], 'Suflê de Chocolate', 'acessivel', 'dificil', 'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg', 45, 
    ARRAY['1 Colher de Chá de Manteiga Derretida', '2 Colheres de Sopa de Açúcar Branco', '2 Onças de Chocolate Amargo a 70%, quebrado em pedaços', '1 Colher de Sopa de Manteiga', '1 Colher de Sopa de Farinha de Trigo', '4 1/3 colheres de sopa de Leite Gelado', '1 Pitada de Sal', '1 Pitada de Pimenta Caiena', '1 Gema de Ovo Grande', '2 Claras de Ovo Grandes', '1 Pitada de Creme de Tártaro', '1 Colher de Sopa de Açúcar Branco'], 
    ARRAY['Pré-aqueça o forno a 190°C. Forre uma assadeira com papel manteiga.', 'Pincele levemente o fundo e os lados de 2 ramequins com 1 colher de chá de manteiga derretida; cubra o fundo e os lados até a borda.', 'Adicione 1 colher de sopa de açúcar branco nos ramequins. Gire os ramequins até que o açúcar cubra todas as superfícies.', 'Coloque os pedaços de chocolate em uma tigela de metal.', 'Coloque a tigela sobre uma panela com cerca de 3 xícaras de água quente em fogo baixo.', 'Derreta 1 colher de sopa de manteiga em uma frigideira em fogo médio. Polvilhe a farinha. Mexa até que a farinha se incorpore à manteiga e a mistura engrosse.', 'Misture o leite frio até que a mistura fique suave e espessa. Transfira a mistura para a tigela com chocolate derretido.', 'Adicione sal e pimenta caiena. Misture bem. Adicione a gema de ovo e misture para combinar.', 'Deixe a tigela acima da água quente (não fervente) para manter o chocolate quente enquanto você bate as claras em neve.', 'Coloque 2 claras de ovo em uma tigela; adicione o creme de tártaro. Bata até que a mistura comece a engrossar e um fio da batida fique na superfície por cerca de 1 segundo antes de desap'], true, false, false, true),
  ('m10', ARRAY['c10'], 'Smoothie de Morango', 'acessivel', 'simples', 'https://cdn.pixabay.com/photo/2016/03/05/19/02/abstract-1238247_1280.jpg', 10, 
    ARRAY['2 Xícaras de Morangos Congelados', '1 Banana', '1 Xícara de Leite de Amêndoa', '1 Colher de Sopa de Mel (opcional)', '1/2 Xícara de Iogurte Grego', 'Gelo (opcional)'], 
    ARRAY['Coloque todos os ingredientes no liquidificador.', 'Bata até obter uma mistura homogênea.', 'Sirva em um copo alto com um canudo.'], 
    true, true, true, true);
