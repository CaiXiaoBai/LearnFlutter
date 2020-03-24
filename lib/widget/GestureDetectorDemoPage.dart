import 'package:flutter/material.dart';

class GestureDetectorDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _GestureDetectorDemoPageState();
  }
}

class _GestureDetectorDemoPageState extends State<GestureDetectorDemoPage>{
  String _operation = "No Gesture detected";
  double _top = 0;
  double _left = 0;
  double _width = 200;
  void updateText(String text){
    setState(() {
      _operation = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Gesture Detector"),),
      body: Column(
        children: <Widget>[
          Center(
            child: GestureDetector(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Text(_operation, style: TextStyle(color: Colors.white),),
              ),
              onTap: () => updateText("Tap"),
              onDoubleTap: () => updateText("DoubleTap"),
              onLongPress: () => updateText("LongPress"),
            ),
          ),
          SizedBox(
            width: 300,
            height: 300,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  top: _top,
                  left: _left,
                  child: GestureDetector(
                    child: CircleAvatar(
                      child: Text("A"),
                    ),
                    onPanDown: (DragDownDetails e){
                      print("用户手指按下：${e.globalPosition}");
                    },
                    onPanUpdate: (DragUpdateDetails e){
                      setState(() {
                        _left += e.delta.dx;
                        _top += e.delta.dy;
                      });
                    },
                    onPanEnd: (DragEndDetails e){
                      print(e.velocity);
                    },
                  ),
                )
              ],
            ),
          ),
          Center(
            child: GestureDetector(
              child: Image.asset("images/IMG_0122.JPG", width: _width,),
              onScaleUpdate: (ScaleUpdateDetails e){
                setState(() {
                  _width = 200*e.scale.clamp(0.8, 10);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}