import 'package:flutter/material.dart';

Future<dynamic> showConfirmationDialog(BuildContext context, {
  String title = "Atenção!",
  String content = "Deseja realmente prosseguir com esta ação?",
  String affirmativeOption = "Confirmar",
}) {
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context, false);
        }, child: Text("Cancelar")),
        TextButton(onPressed: (){
          Navigator.pop(context, true);
        }, child: Text(affirmativeOption.toUpperCase(),
        style: const TextStyle(
          color: Colors.brown, 
          fontWeight: FontWeight.bold,
          ),
        ),
        ),
      ],
    );
  },
  );
 
}

Future<dynamic> showExceptionDialog(BuildContext context, {
  String title = "Erro!",
  required String content,
}) {
  return showDialog(context: context, builder: (context){
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: const Text("OK")),
      ],
    );
  },
  );
}