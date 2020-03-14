
import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Button page"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text("FlatButton"),
            onPressed: (){},
          ),
          RaisedButton(
            child: Text("RaisedButton"),
            onPressed: (){},
          ),
          OutlineButton(
            child: Text("OutlineButton"),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: (){},
          ),
          RaisedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.airline_seat_legroom_reduced),
            label: Text("你好")
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.blueAccent,
            colorBrightness: Brightness.dark,
            splashColor: Colors.grey,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text("Submit"),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}