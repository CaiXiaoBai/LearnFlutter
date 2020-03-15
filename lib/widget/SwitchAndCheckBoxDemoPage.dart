import 'package:flutter/material.dart';

class SwitchAndCheckBoxDemoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _SwitchAndCheckBoxState();
  }
}

class _SwitchAndCheckBoxState extends State<SwitchAndCheckBoxDemoPage> {
  bool _SwitchSelected = true;
  bool _CheckBoxSelected = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch and CHeckBox Page"),
      ),
      body: Column(
        children: <Widget>[
          Switch(
            value: _SwitchSelected,
            onChanged: (value){
              setState(() {
                _SwitchSelected = value;
              });
            },
          ),
          Checkbox(
            value: _CheckBoxSelected,
            activeColor: Colors.red,
            onChanged: (value){
              setState(() {
                _CheckBoxSelected = value;
              });
            },
          )
        ],
      ),
    );
  }
}