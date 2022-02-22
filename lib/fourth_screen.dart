import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key key}) : super(key: key);

  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/jsons/96937-like-heart.json',
        repeat: true,
        animate: true,
      ),
    );
  }
}
