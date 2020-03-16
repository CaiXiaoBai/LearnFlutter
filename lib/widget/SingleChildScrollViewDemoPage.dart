import 'package:flutter/material.dart';

class SingleChildScrollViewDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView"),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: str.split("").
              map((s) => Text(s, textScaleFactor: 2,)).toList(),
            ),
          ),
        ),
      ),
    );
  }
}