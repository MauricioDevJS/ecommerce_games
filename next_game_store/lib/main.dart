import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(NextGameStore());

class NextGameStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Next Game Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
