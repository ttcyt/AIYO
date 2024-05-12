import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BmiPage extends StatefulWidget {
  BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> with TickerProviderStateMixin {
  late AnimationController _animationController;

  num bmi = 19.2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6CAFB),
      body: Padding(
        padding: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('animations/Animation - 1711361377495.json',
                height: 300,
                width: 300,
                repeat: true,
                controller: _animationController,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your BMI is $bmi!!',
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'merri',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
