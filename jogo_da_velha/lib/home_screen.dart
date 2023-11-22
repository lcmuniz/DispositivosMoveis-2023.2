import 'package:flutter/material.dart';
import 'package:jogo_da_velha/alert_dialog.dart';
import 'package:jogo_da_velha/widgets/placar.dart';
import 'package:jogo_da_velha/widgets/status.dart';
import 'package:jogo_da_velha/widgets/tabuleiro.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pontosX = 0;
  int pontosO = 0;
  bool vezDeO = true;
  int quadrosPreenchidos = 0;
  final List<String> listaOX = ['', '', '', '', '', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              limparQuadro();
            },
          )
        ],
        title: const Text(
          'Jogo da Velha',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Column(
        children: [
          Placar(
            pontosX: pontosX,
            pontosO: pontosO,
          ),
          Tabuleiro(
            listaOX: listaOX,
            aoClicar: marcar,
          ),
          Status(
            mensagem: vezDeO ? 'Vez de O' : 'Vez de X',
          ),
        ],
      ),
    );
  }

  void marcar(int index) {
    setState(() {
      if (vezDeO && listaOX[index] == '') {
        listaOX[index] = 'o';
        quadrosPreenchidos += 1;
      } else if (!vezDeO && listaOX[index] == '') {
        listaOX[index] = 'x';
        quadrosPreenchidos += 1;
      }

      vezDeO = !vezDeO;
      checarVencedor();
    });
  }

  void checarVencedor() {
    // check first row
    if (listaOX[0] == listaOX[1] &&
        listaOX[0] == listaOX[2] &&
        listaOX[0] != '') {
      mostrarResultado('Vencedor', listaOX[0]);
      return;
    }

    // check second row
    if (listaOX[3] == listaOX[4] &&
        listaOX[3] == listaOX[5] &&
        listaOX[3] != '') {
      mostrarResultado('Vencedor', listaOX[3]);
      return;
    }

    // check third row
    if (listaOX[6] == listaOX[7] &&
        listaOX[6] == listaOX[8] &&
        listaOX[6] != '') {
      mostrarResultado('Vencedor', listaOX[6]);
      return;
    }

    // check first column
    if (listaOX[0] == listaOX[3] &&
        listaOX[0] == listaOX[6] &&
        listaOX[0] != '') {
      mostrarResultado('Vencedor', listaOX[0]);
      return;
    }

    // check second column
    if (listaOX[1] == listaOX[4] &&
        listaOX[1] == listaOX[7] &&
        listaOX[1] != '') {
      mostrarResultado('Vencedor', listaOX[1]);
      return;
    }

    // check third column
    if (listaOX[2] == listaOX[5] &&
        listaOX[2] == listaOX[8] &&
        listaOX[2] != '') {
      mostrarResultado('Vencedor', listaOX[2]);
      return;
    }

    // check diagonal
    if (listaOX[0] == listaOX[4] &&
        listaOX[0] == listaOX[8] &&
        listaOX[0] != '') {
      mostrarResultado('Vencedor', listaOX[0]);
      return;
    }

    // check diagonal
    if (listaOX[2] == listaOX[4] &&
        listaOX[2] == listaOX[6] &&
        listaOX[2] != '') {
      mostrarResultado('Vencedor', listaOX[2]);
      return;
    }

    if (quadrosPreenchidos == 9) {
      mostrarResultado('Empate', '');
    }
  }

  void mostrarResultado(String titulo, String vencedor) {
    showAlertDialog(
        context: context,
        titulo: titulo,
        mensagem: vencedor == ''
            ? 'O jogo terminou empatado'
            : 'O venedor foi ${vencedor.toUpperCase()}',
        textoBotao: 'OK',
        aoPressionarBotao: () {
          limparQuadro();
          Navigator.of(context).pop();
        });

    if (vencedor == 'o') {
      pontosO += 1;
    } else if (vencedor == 'x') {
      pontosX += 1;
    }
  }

  void limparQuadro() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        listaOX[i] = '';
      }
    });
    vezDeO = true;
    quadrosPreenchidos = 0;
  }
}
