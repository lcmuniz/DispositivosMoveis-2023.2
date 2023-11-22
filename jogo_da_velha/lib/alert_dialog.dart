import 'package:flutter/material.dart';

Future<void> showAlertDialog({
  required BuildContext context,
  required String titulo,
  required String mensagem,
  required String textoBotao,
  required VoidCallback aoPressionarBotao,
}) async {
  return await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(titulo),
      content: Text(mensagem),
      actions: <Widget>[
        TextButton(
          onPressed: () => aoPressionarBotao(),
          child: Text(textoBotao),
        ),
      ],
    ),
  );
}
