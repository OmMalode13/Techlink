import 'package:flutter/material.dart';

void main() {
  runApp(Page3());
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserProfilePage extends StatelessWidget {
  // User profile data
  String userName = 'Ommalode';
  String userEmail = 'Ommalode2003@gmail.com';
  String userPhoneNumber = '9423260377';
  String userAddress = 'Nagpur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.black54,
                child: Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20.0),
              buildField("Name", userName),
              SizedBox(height: 20.0),
              buildField("Email", userEmail),
              SizedBox(height: 20.0),
              buildField("Phone Number", userPhoneNumber),
              SizedBox(height: 20.0),
              buildField("Address", userAddress),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        Text(
          value,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
