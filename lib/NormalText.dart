import 'package:flutter/material.dart';

class NormalText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '接下来，我们以一个具体的例子来看看 Text 控件的使用方法。如下所示，我在代码中定义了一段居中布局、20 号红色粗体展示样式的字符串：',
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
    );
  }
}