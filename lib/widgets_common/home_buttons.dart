import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget homeButtons({width, hieght, icon, String ?title, onPress}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(icon,width: 30,),
      //10.heightBox,
      title!.text.fontFamily(semibold).color(fontGrey).make(),
    ],
  ).box.rounded.white.size(width, hieght).make();
}