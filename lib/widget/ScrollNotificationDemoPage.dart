import 'package:flutter/material.dart';

class ScrollNotificationDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ScrollNotificationDemoPageState();
  }
}

class _ScrollNotificationDemoPageState extends State<ScrollNotificationDemoPage>{
  String _progress = "0%";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll Notification"),
      ),
      body: Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification){
            double progress = notification.metrics.pixels/notification.metrics.maxScrollExtent;
            setState(() {
              _progress = "${(progress*100).toInt()}%";
            });
            print("BottomEdge: ${notification.metrics.extentAfter == 0}");
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                itemBuilder: (context, index){
                  return ListTile(title: Text("$index"),);
                },
                itemCount: 100,
                itemExtent: 50,
              ),
              CircleAvatar(
                radius: 30,
                child: Text(_progress),
                backgroundColor: Colors.white70,
              )
            ],
          ),
        ),
      ),
    );
  }
}