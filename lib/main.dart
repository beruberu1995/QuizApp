import 'package:flutter/material.dart';
import 'package:myapp/questions_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 139, 143, 223), Color.fromARGB(255, 209, 136, 234)],
          ),
        ),
        child: const QuestionsScreen()
      ),
    ),
  ));
}
