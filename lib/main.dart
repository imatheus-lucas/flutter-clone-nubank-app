import 'package:flutter/material.dart';
import 'package:nubank/screens/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomePage(),
    );
  }
}
