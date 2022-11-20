import 'package:flutter/material.dart';
import 'package:restro/screens/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Restro',
      home: HomePage(),
    );
  }
}
