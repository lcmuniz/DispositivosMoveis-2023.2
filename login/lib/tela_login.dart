import 'package:flutter/material.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin(this.irPara, {super.key});

  final Function() irPara;

  void logar() {
    // login
    irPara();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'FACAM WEB',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Digite seu e-mail",
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Digite sua senha",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
            ),
            onPressed: logar,
            child: const Text(
              'Entrar',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
