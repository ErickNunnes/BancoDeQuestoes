import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:banco_de_questoes/screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'LoginApp',
      color: Colors.lightBlue,
      home: AuthScreen(),
    );
  }
}