import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.network(
        'https://assets5.lottiefiles.com/packages/lf20_hqhmq8mr.json',
        repeat: true,
        animate: true,
      ),
    );
  }
}
