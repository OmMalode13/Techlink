import 'package:app/page1.dart';
import 'package:app/page2.dart';
import 'package:app/page3.dart';
import 'package:app/page4.dart';
import 'package:app/page5.dart';
import 'package:flutter/material.dart';


import 'components/mydrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // List of pages to be displayed in the navigation bar.
  final List<Widget> _pages = [
    // Add your different pages here.
    // Example:
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("TechLink",style: TextStyle(color: Colors.black),),
      ),

      drawer: MyDrawer(),

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.white54,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black),
            label: 'Home',

          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.event_note,color: Colors.black),
          //   label: 'Bookings',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined,color: Colors.black),
            label: 'Categories',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.calendar_month,color: Colors.black),
          //   label: 'Calender',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}