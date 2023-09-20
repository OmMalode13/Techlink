import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/dropdown.dart';

class Wsignup extends StatefulWidget{
  @override
  _WsignupState createState() => _WsignupState();

}



class _WsignupState extends State<Wsignup>{
  String dropdown="Select Profession..";
  var professions=["Select Profession..","Carpenter","Electrician","Home Cleaning","Mechanic","Electronics Repair","AC Repairing"];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              Align(
                alignment:Alignment.center,
               child:Text(

              'New beginnings, endless',
               style:TextStyle(
                 color:Colors.black,
                fontSize:25,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
              Align(
                alignment:Alignment.center,
                child:Text(

                  'opportunities. Welcome!',
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Phone no.",
                        labelText: "phone no.",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 330,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black54,
              //   ),
              // ),

              child: DropdownButton(
                value:dropdown,
                items: professions.map((String item){
                return DropdownMenuItem(
                  value: item,
                  child: Text(item,
                  selectionColor: Colors.cyan,

                  style:
                    const TextStyle(color: Colors.black54),
                  ),
                );
              }).toList(),
                  onChanged: (String? newValue){
                   setState((){
                     dropdown = newValue ?? "Select Profession..";
                   });

                  },
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
                underline: SizedBox(), // Add a custom underline here (you can use a SizedBox)
                isExpanded: true,
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
              const SizedBox(height: 20),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Confirm Password",
                        labelText: "Confirm Password",
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

              const SizedBox(height: 50),
            ],
          ),
        ),

      ),
    );
  }


}