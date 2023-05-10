import 'package:dw10_mobx/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  late final ReactionDisposer snackDisposer;

  @override
  void initState() {
    snackDisposer = reaction((_) => controller.showSnackBar, (showSnackBar) {
      if (showSnackBar) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(controller.mensagemSnackBar),
          ),
        );
      }
    });
    super.initState();
  }

  void disposer() {
    snackDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Build Rodando");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (context) {
                print("Somente o controller.nome");
                return Text(controller.nome);
              },
            ),
            ElevatedButton(
              onPressed: () {
                //+controller.nome = "Dario de Paula Maciel";
                controller.alterarNome("Dario de Paula Maciel");
              },
              child: const Text("Alterar Nome"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.monstrarSnackBar();
              },
              child: const Text("Mostrar SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
