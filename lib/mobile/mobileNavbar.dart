import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_item.dart';

import '../portfolio.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Zakaria Hossain"),
                accountEmail: Text("zakariaaltime@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title:    NavItem(title: 'Home', onTap: () {
                  Portfolio.of(context)?.changePageIndex(0);
                },),
         
               onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      
    
  }
  }
