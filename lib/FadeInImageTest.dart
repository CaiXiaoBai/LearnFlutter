import 'package:flutter/material.dart';

class FadeInImageTest extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeInImage.assetNetwork(
      placeholder: 'assets/timg.gif',
//        image: 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576750479693&di=73c11a28fc0185ba8f4db2d2858f0ed8&imgtype=0&src=http%3A%2F%2Fbpic.588ku.com%2Felement_origin_min_pic%2F00%2F90%2F47%2F9256efcbf458c23.jpg',
      image: "https://xxx.jpg",
      fit: BoxFit.cover,
      width: 200,
      height: 200,
    );
  }
}