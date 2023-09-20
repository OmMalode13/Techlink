import 'package:app/components/mydrawer.dart';
import 'package:flutter/material.dart';
class Home2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Welcome to TechLink",style: TextStyle(color: Colors.black),),
      ),
      drawer: MyDrawer(),


    );
  }
}