import 'package:e_commerce/presentation/ui/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Ecommerce app",
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
