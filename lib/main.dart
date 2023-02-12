import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get color => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Extraworkers',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      //home: const WellcomePage(),
    );
  }
}
