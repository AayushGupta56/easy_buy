import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/material.dart';
Widget detailsCard ({width ,String?title,String ?  count}){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center ,
    children: [
      "00".text.color(darkFontGrey).fontFamily(bold).make(),
      5.heightBox,
      "in your cart".text.color(darkFontGrey).make(),

    ],
  )
      .box
      .rounded
      .width(width)
      .height(80)
      .padding(EdgeInsets.all(4))
      .white
      .make();

}