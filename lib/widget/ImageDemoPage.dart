
import 'package:flutter/material.dart';

class ImageDemoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var img = AssetImage("images/IMG_0122.JPG");
    return Scaffold(
      appBar: AppBar(
        title: Text("Image page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Image>[
            Image(
              image: img,
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
            Image(
              image: img,
              height: 100,
              width: 50,
              fit: BoxFit.contain,
            ),
            Image(
              image: img,
              height: 50,
              width: 100,
              fit: BoxFit.cover,
            ),
            Image(
              image: img,
              height: 100,
              width: 100,
              fit: BoxFit.fitHeight,
            ),
            Image(
              image: img,
              height: 100,
              width: 100,
              fit: BoxFit.scaleDown,
            ),
            Image(
              image: img,
              height: 100,
              width: 100,
              fit: BoxFit.none,
            ),
            Image(
              image: img,
              height: 100,
              width: 100,
              fit: BoxFit.fill,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
          ].map((e){
            return Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16),
                  child: SizedBox(
                    width: 100,
                    child: e,
                  ),
                ),
                Text(e.fit.toString())
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}