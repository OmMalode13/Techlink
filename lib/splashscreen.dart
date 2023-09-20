// import 'dart:js';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Future.delayed(Duration(seconds:2),(){
      Navigator.of(context).pushReplacementNamed('/login');

    });
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200.0,
              height: 200.0,
            ),
            SizedBox(height: 20,
            ),
            Text('TechLink',
            style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),

    );
  }
}