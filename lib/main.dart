 // import 'dart:convert';

import 'package:app/carpentor.dart';
import 'package:app/home.dart';
import 'package:app/home2.dart';
import 'package:app/login1.dart';
import 'package:app/components/mydrawer.dart';
import 'package:app/page3.dart';
import 'package:app/splashscreen.dart';
import 'package:app/usignup.dart';
import 'package:app/utils/routes.dart';
import 'package:app/wsignup.dart';
import 'package:flutter/material.dart';
import 'package:app/signup.dart';

// import 'package:google_fonts/google_fonts.dart';
//  import 'package:get/get.dart';



void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splashscreen',
        routes: {
        MyRoutes.splashscreen:(context) => SplashScreen(),
          MyRoutes.loginRoute:(context)=>Login(),
        MyRoutes.signupRoute:(context)=>Signup(),
        MyRoutes.usignup:(context)=>Usignup(),
        MyRoutes.wsignup:(context)=>Wsignup(),
        MyRoutes.splashscreen:(context)=>SplashScreen(),
          MyRoutes.home:(context)=>MyHomePage(),
          MyRoutes.page3:(context)=>Page3(),
          MyRoutes.mydrawer:(context)=>MyDrawer(),
          MyRoutes.home2:(context)=>Home2(),
          MyRoutes.carpenter:(context)=>Carpenter(),

      }

    );
  }
}
