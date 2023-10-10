import 'package:flutter/material.dart';
import 'package:tarefas/tarefa.dart';
import 'package:tarefas/tarefa_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final listaDeTarefas = Tarefa.listaDeTarefas();
  List<Tarefa> resultados = [];

  excluirTarefa(Tarefa tarefa) {
    setState(() {
      resultados.removeWhere((item) => item.id == tarefa.id);
    });
  }

  @override
  void initState() {
    super.initState();
    resultados = [...listaDeTarefas];
  }

  @override
  Widget build(BuildContext context) {
    final tarefaController = TextEditingController();

    adicionarTarefa(String texto) {
      setState(() {
        resultados.add(Tarefa(
          id: DateTime.now().microsecondsSinceEpoch,
          texto: texto,
        ));
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFEEEFF5),
        appBar: myAppBar(),
        body: Stack(
          children: [
            Column(
              children: [
                search(),
                Expanded(
                  child: ListView(
                    children: [
                      for (var tarefa in resultados.reversed)
                        TarefaItem(
                          tarefa: tarefa,
                          excluirTarefa: excluirTarefa,
                        ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 10, bottom: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: tarefaController,
                        decoration: InputDecoration(
                            hintText: "Adicione uma nova tarefa",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20, bottom: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        adicionarTarefa(tarefaController.text);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(55, 55)),
                      child: Text('+'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  myAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFFEEEFF5),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/man.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  search() {
    pesquisar(String texto) {
      setState(() {
        if (texto.isEmpty) {
          resultados = [...listaDeTarefas];
        } else {
          resultados = listaDeTarefas.where((item) => item.id == 1).toList();
        }
      });
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) {
          pesquisar(value);
        },
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: "Procurar",
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
