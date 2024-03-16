import 'package:aiyo/view/choose_pose_page.dart';
import 'package:aiyo/view/register_page.dart';
import 'package:flutter/material.dart';
import 'package:aiyo/view/login_page.dart';
import 'package:aiyo/view/sport_day_page.dart';
void main()=>runApp(Aiyo());
class Aiyo extends StatelessWidget {
  const Aiyo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SportDayPage(),
    );
  }
}


