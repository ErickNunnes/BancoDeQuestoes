import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700],
        title: const Text('Profile'),
      ),
      body: const Center(
      child: Text('Bem vindo a area de seu perfil!!'),
      ),
    );
  }
}