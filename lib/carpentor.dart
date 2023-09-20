import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Carpenter extends StatelessWidget{
  const Carpenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SafeArea(
         child :Column(
           children: [
             ListTile(
               onTap: (){

               },
               leading: Icon(CupertinoIcons.person,color: Colors.black,),
               title: Text(
                 "name",
                 textScaleFactor: 1.2,

                 style: TextStyle(
                   color: Colors.redAccent,
                 ),
               ),
             ),

           ],

          ),
        ),
      )


    );
  }
}