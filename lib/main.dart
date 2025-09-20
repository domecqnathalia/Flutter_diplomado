//import 'package:appuno/presentation/screens/counter_screen.dart';
import 'package:appuno/presentation/screens/counter_screen_function.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
      ),
      home: CounterScreenFunction(),
    );
  }
}
