import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void diminuir() {
    contador--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meu contador',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Text(
          contador.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: diminuir, child: const Icon(Icons.remove)),
          const Gap(10),
          FloatingActionButton(
              onPressed: incrementar, child: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
