import 'package:flutter/material.dart';
import 'package:projeto_flutter2/components/auth_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[700],
      body: const Center(
        child: SingleChildScrollView(
          child: AuthForm(),
        ),
      ),
    );
  }
}