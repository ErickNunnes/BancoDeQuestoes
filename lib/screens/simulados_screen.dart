import 'package:flutter/material.dart';

class SimuladosScreen extends StatelessWidget {
  const SimuladosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700],
        title: const Text('Simulados'),
      ),
      body: const Center(
      child: Text('Bem vindo a area de simulados!!'),
      ),
    );
  }
}