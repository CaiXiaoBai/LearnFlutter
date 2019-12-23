import 'package:flutter/material.dart';

class RichTextTest extends StatelessWidget{
  TextStyle red = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red);
  TextStyle black = TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text.rich(
        TextSpan(
            children: <TextSpan>[
              TextSpan(text: "文本是视图系统中的常见控件，用来显示一段特定样式的字符串，就比如。", style: black),
              TextSpan(text: "Android", style: red),
              TextSpan(text: "里的TextView，或是iOS中的UILabel。", style: black),
            ]
        )
    );
  }
}