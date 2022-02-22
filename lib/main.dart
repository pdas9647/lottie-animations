import 'package:flutter/material.dart';

import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie Animations',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber.shade300,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          color: Colors.amber.shade300,
        )
      ),
      home: const MainScreen(),
    );
  }
}
