import 'package:flutter/material.dart';

class ThemeDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ThemeDemoPageState();
  }
}

class ThemeDemoPageState extends State<ThemeDemoPage>{
  Color themeColor = Colors.teal;
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    // TODO: implement build
    return Theme(
      data: ThemeData(
        primarySwatch: themeColor,
        iconTheme: IconThemeData(color: themeColor),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("theme demo"),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.arrow_drop_down_circle),
                Text("颜色跟随主题")
              ],
            ),
            Theme(
              data: themeData.copyWith(
                iconTheme: themeData.iconTheme.copyWith(
                  color: Colors.black
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.arrow_drop_down_circle),
                  Text("颜色固定")
                ],
              )
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              themeColor = themeColor == Colors.teal ? Colors.blue: Colors.teal;
            });
          },
          child: Icon(Icons.favorite),
        ),
      ),
    );
  }
}