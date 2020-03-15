

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipOval(
                      child: Image.asset("images/IMG_0122.JPG", width: 80,),
                    ),
                  ),
                  Text("Keep Up")
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.add),
                    title: Text("add acount"),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("settings"),
                  ),
                ],
              ),
            )
          ],
        ),
        removeTop: true,
      ),
    );
  }
}