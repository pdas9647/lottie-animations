import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pop();
        _controller.reset();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<void> showDoneDialog() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return Dialog(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Lottie.asset('assets/jsons/done.json',
                      repeat: false,
                      controller: _controller, onLoaded: (composition) {
                    _controller.duration = composition.duration;
                    _controller.forward();
                  }),
                  const Text(
                    'Enjoy your order',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 26.0),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.network(
            // 'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
            'https://assets5.lottiefiles.com/packages/lf20_qf1pt6ua.json',
            animate: true,
          ),
          const SizedBox(height: 32.0),
          FlatButton.icon(
            onPressed: showDoneDialog,
            color: Theme.of(context).primaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            icon: const Icon(Icons.delivery_dining_rounded),
            label: const Text('Order Pizza'),
          ),
        ],
      ),
    );
  }
}
