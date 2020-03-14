
import 'package:flutter/material.dart';

class TextDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Column(
        //去掉column的居中影响
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Hello world",
            textAlign: TextAlign.left,
          ),
          Text("Hello world"*7,
            maxLines: 1,//最大行数
            overflow: TextOverflow.ellipsis,//截断方式
          ),
          Text("Hello world",
            textScaleFactor: 1.5,
          ),
          Text("Hello world",
            style: TextStyle(
              color: Colors.pink,
              height: 1.5,
              fontSize: 20,
            ),
          ),
          Text.rich(TextSpan(
            children: [
              TextSpan(
                text: "home:"
              ),
              TextSpan(
                text: "https://www.baidu.com",
                style: TextStyle(
                  color: Colors.blue
                ),
                recognizer: null,
              )
            ]
          ))
        ],
      )
    );
  }
}
///
/// 子的 widget 如果没有指定字体格式等，默认会继承父 widget 的格式
///