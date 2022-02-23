import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key key}) : super(key: key);

  @override
  _FifthScreenState createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        // 'assets/jsons/96937-like-heart.json',
        'assets/jsons/lf30_zfvcfmf6.json',
        repeat: true,
        animate: true,
      ),
    );
  }
}
