import 'package:flutter/material.dart';

class MateriaScreen extends StatelessWidget {
  const MateriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700],
        title: const Text('Materias'),
      ),
      body: const Center(
      child: Text('Bem vindo a area de suas materias!!'),
      ),
    );
  }
}