import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/material.dart';
Widget featuredButtons({String?title,icon}){
  return Row(
    children: [
      Image.asset(icon,width:40,fit: BoxFit.fill,),
      10.widthBox,
      title!.text.color(darkFontGrey).fontFamily(semibold).make()
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4),).padding(EdgeInsets.all(4),).white.roundedSM.outerShadowSm.make();
}