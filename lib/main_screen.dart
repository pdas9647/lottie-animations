import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_animation/fifth_screen.dart';
import 'package:lottie_animation/first_screen.dart';
import 'package:lottie_animation/fourth_screen.dart';
import 'package:lottie_animation/second_screen.dart';
import 'package:lottie_animation/third_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> _widgetList = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
    const FourthScreen(),
    const FifthScreen(),
  ];
  final PageController _pageController = PageController();
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie Animations')),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: _widgetList,
        controller: _pageController,
        onPageChanged: (num) {
          setState(() {
            _curr = num;
          });
        },
      ),
    );
  }
}
