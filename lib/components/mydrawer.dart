import 'package:app/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,


            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                  accountName: Text("Om"), accountEmail: Text("ommalode2003@gmail.com"),
              currentAccountPicture: Icon(Icons.account_circle,size: 60,color: Colors.white,),
              ),
          ),
          ListTile(
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.home);
            },
            leading: Icon(CupertinoIcons.home,color: Colors.white,),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.page3);
              },
            leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

          ListTile(
            onTap:(){
              Navigator.pushNamed(context,MyRoutes.loginRoute);
            },
            leading: Icon(CupertinoIcons.lock_open_fill,color: Colors.white,),
            title: Text(
              "Log Out",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

        ],
      ),
      ),

    );
  }
}