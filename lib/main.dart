import 'package:flutter/material.dart';
import 'package:lang_app/screens/home_screen.dart';

void main() {
  runApp(const LangApp());
}

class LangApp extends StatelessWidget {
  const LangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
