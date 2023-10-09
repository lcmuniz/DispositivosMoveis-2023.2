import 'package:flutter/material.dart';
import 'package:tarefas/tarefa.dart';
import 'package:tarefas/tarefa_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final listaDeTarefas = Tarefa.listaDeTarefas();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFFEEEFF5),
          appBar: appBar(),
          body: Column(
            children: [
              search(),
              Expanded(
                child: ListView(
                  children: [
                    for (var tarefa in listaDeTarefas)
                      TarefaItem(tarefa: tarefa),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

appBar() {
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
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: Colors.yellow[200],
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
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
