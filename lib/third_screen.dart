import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/jsons/96576-flying-plane.json',
        repeat: true,
        animate: true,
      ),
    );
  }
}
