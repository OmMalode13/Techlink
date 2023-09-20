import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';

import 'components/square_tile.dart';
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

        backgroundColor: Colors.grey[300],

       body: SafeArea(
        child: Center(
          child:SingleChildScrollView(

          child:Column(
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.account_circle,
                size:100,
              ),
              const SizedBox(height:50),
              //Welcome back you have missed it
              Text(
                'Welcome back you\'ve been missed!',
                style:TextStyle(
                  color:Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height:25),

              Padding(
           padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
           child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(
                   hintText: "Enter Username",
                   labelText: "username",
                 ),
               ),

           TextFormField(
             obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter Password",
                   labelText: "password",
                 ),
               ),
               const SizedBox(height:25),


               ElevatedButton(
                   onPressed: (){
                     Navigator.pushNamed(context, MyRoutes.home);
                   },
                 child:Text("LOGIN"),
                 style: TextButton.styleFrom(backgroundColor: Colors.black,
                     fixedSize: const Size(300, 50),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(15)),
                 )
               )

             ],
           ),
         ),
              const SizedBox(height:25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button

                  SquareTile(imagePath: 'assets/images/google.png'),
                ],
              ),
              const SizedBox(height: 50),
              // const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, MyRoutes.signupRoute);
                      },
                      child:Text("Register now"),

                    style: TextButton.styleFrom(backgroundColor: Colors.grey[300],
                        foregroundColor: Colors.blue,shadowColor: Colors.transparent,


                        // fixedSize: const Size(300, 50),
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(15)),

                  ),
                  ),
                  // const Text(
                  //   'Register now',
                  //   style: TextStyle(
                  //     color: Colors.blue,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      )
    )
    );
  }
}