import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';

class Usignup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(

          child: SingleChildScrollView(
            child: Column(
              children: [const SizedBox(height: 40),


                Align(
                  alignment:Alignment.center,
                  child:Text(
                      'Welcome to our digital home.',
                      style:TextStyle(
                        color:Colors.black,
                        fontSize:25,
                        fontWeight: FontWeight.w400,
                      ),
                  ),
                ),
                const SizedBox(height: 30),


                Image.asset("assets/images/user.png",
                     fit: BoxFit.cover,
                  height: 120,
                    width: 120,
                ),
                const SizedBox(height: 20),
            Padding(
               padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                child: Column(
                  children: [
                     TextFormField(
                           decoration: InputDecoration(
                             hintText: "Enter name",
                                labelText: "Name",
                                ),
                    ),
                  ],
                ),
            ),
                // const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          labelText: "Email",
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Phone no.",
                          labelText: "Phone",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Address",
                          labelText: "Address",
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Confirm Password",
                          labelText: "confirm Password",
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),



                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  },
                  child:Text("Sign Up",style:TextStyle (
                    fontSize: 15,
                  ),),
                  style: TextButton.styleFrom(backgroundColor: Colors.black,
                    fixedSize: const Size(325, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),




             ],
            ),

          ),
        ),



    );
  }
}