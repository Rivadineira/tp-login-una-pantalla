import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key});

  final TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String ingresado = userController.text;
                  if (ingresado == "rivaara07@gmail.com") {
                    print("bienvenido");
                  } else {
                    print("mail incorrecto");
                  }
                },
                child: const Text("Ingresar"),
              ),
              TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Mail",
                    prefixIcon: (Icon(Icons.person)),
                  ),
                  controller: userController),
            ],
          ),
        ),
      ),
    );
  }
}
