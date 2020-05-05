import 'package:flutter/material.dart';
class navDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text("Shubham Tripathi"),
        accountEmail: Text("shubhamtrip16@gmail.com"),
        arrowColor: Colors.black54,
        currentAccountPicture: GestureDetector(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.cyanAccent,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
          title: Text('Home Page'),
          leading: Icon(
            Icons.home,
            color: Colors.redAccent,
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
          title: Text('My Account'),
          leading: Icon(
            Icons.person,
            color: Colors.redAccent,
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        child: ListTile(
          title: Text('Links'),
          leading: Icon(
            Icons.dashboard,
            color: Colors.redAccent,
          ),
        ),
      ),
    ]);
  }
}
