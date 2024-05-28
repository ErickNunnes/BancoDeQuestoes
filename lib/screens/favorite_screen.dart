import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700],
        title: const Text('Salvos'),
      ),
      body: const Center(
      child: Text('Bem vindo a area de seus favoritos!!'),
      ),
    );
  }
}