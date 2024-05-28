import 'package:banco_de_questoes/screens/favorite_screen.dart';
import 'package:banco_de_questoes/screens/materia_screen.dart';
import 'package:banco_de_questoes/screens/profile_screen.dart';
import 'package:banco_de_questoes/screens/simulados_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:banco_de_questoes/screens/auth_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlue[700],
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const AuthScreen(), 
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue[700]
              ),
              child: const Text(
                'Banco de Questões',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.account_circle,
                size: 35,
                ),
              title: const Text(
                'Profile',
              style: TextStyle(
                fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProfileScreen())
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.menu_book_outlined,
                size: 35,
              ),
              title: const Text(
                'Simulados',
              style: TextStyle(
                fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SimuladosScreen())
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
                size: 35,
              ),
              title: const Text(
                'Matérias',
              style: TextStyle(
                fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MateriaScreen())
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.bookmark_outlined,
                size: 35,
              ),
              title: const Text(
                'Salvos',
              style: TextStyle(
                fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const FavoriteScreen())
                );
              },
            )
          ],
        ),
      ),
      body: const Center(
        child: Text('Bem-vindo à tela inicial!'),
      ),
    );
  }
}
