import 'package:flutter/material.dart';

class WillPopScopeDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _WillPopScopeDemoPage();
  }
}

class _WillPopScopeDemoPage extends State<WillPopScopeDemoPage>{
  DateTime _lastPressedTime;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Will pop scope"),
      ),
      body: WillPopScope(
        onWillPop: () async{
          if(_lastPressedTime == null || DateTime.now().difference(_lastPressedTime) > Duration(seconds: 1)){
            _lastPressedTime = DateTime.now();
            return false;
          }
          return true;
        },
        child: Container(
          alignment: Alignment.center,
          child: Text("1秒内连续按两次返回退出"),
        ),
      ),
    );
  }
}
