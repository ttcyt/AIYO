import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6CAFB),
      body: Padding(
        padding: const EdgeInsets.only(top: 80,left: 20,right: 20),
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AIYO',
                    style: TextStyle(fontFamily: 'merri', fontSize: 35,),
                  ),
                  Lottie.asset('animations/Animation - 1709522334397.json',height: 150,width: 100),
                ],
              ),
              SizedBox(height: 50,),
              TextField(
          
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  filled: true,
                  contentPadding:
                  const EdgeInsets.only(top: 20, bottom: 20),
                  hintText: 'enter your email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.transparent),
          
                  ),
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
          
                  filled: true,
                  fillColor: Colors.white,
                  focusColor: Colors.white,
                  contentPadding:
                  const EdgeInsets.only(top: 20, bottom: 20),
                  hintText: 'enter your email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.transparent),
          
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.transparent),
          
                  ),
                ),
              ),
              SizedBox(height: 15,),
              TextButton(
                onPressed: () {},
                child: Text('Login'),
              ),
              SizedBox(height: 10,),
          
              TextButton(
                onPressed: () {},
                child: Text('Signin'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
