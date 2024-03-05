import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6CAFB),
      body: Padding(
        padding: EdgeInsets.only(top: 100,left: 20,right: 20,),
        child: Column(
          children: [
            Text('AIYO'),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
                hintText: 'enter your name',
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
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
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
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
                hintText: 'enter your password',
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
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
                hintText: 'enter your birthday',
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
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
                hintText: 'enter your gender',
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
                fillColor: Colors.white,
                focusColor: Colors.white,
                filled: true,
                contentPadding: const EdgeInsets.only(top: 20, bottom: 20),
                hintText: 'enter your ',
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
            TextButton(
              onPressed: () {},
              child: Text('Signin'),
            ),
          ],
        ),
      ),
    );
  }
}
