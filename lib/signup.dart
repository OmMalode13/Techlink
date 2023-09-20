import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:app/utils/routes.dart';

class Signup extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
      child : SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 50),
              Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [

                  // google button
                  Image.asset('assets/images/logo.png',
                  width:200,
                  height: 200,),
                ],
              ),
            const SizedBox(height: 25),
              Align(
                alignment:Alignment.center,
                child:Text(
                'Welcome to TechLink',
                style:TextStyle(
                  color:Colors.black,
                  fontSize:23,
                  fontWeight: FontWeight.w400,


                )
              ),
              ),
              const SizedBox(height: 60),

              Align(
                alignment:Alignment.center,
                child:Text(
                    'Signup As:',
                    style:TextStyle(
                      color:Colors.black54,
                      fontSize:23,
                      fontWeight: FontWeight.w300,

                    )
                ),
              ),

              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.usignup);
                    },
                  child:Text("User",style:TextStyle (
                    fontSize: 15,
                  ),),
                  style: TextButton.styleFrom(backgroundColor: Colors.black,
                    fixedSize: const Size(325, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
              ),

              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.wsignup);
                },
                child:Text("Work Profession",style:TextStyle (
                  fontSize: 15,
                ),),
                style: TextButton.styleFrom(backgroundColor: Colors.black,
                  fixedSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),











            ]

        ),

      ),
      ),
    );
  }
}