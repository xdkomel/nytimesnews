import 'package:flutter/material.dart';
import 'presentation/homescreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            background: Colors.white,
          ),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      );
}
