import 'package:flutter/material.dart';
import 'screens/around.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seconde Pousse',
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFFEFEFEF), // Change la couleur de fond globale ici
    ),
      home: Around(),
    );
  }
}