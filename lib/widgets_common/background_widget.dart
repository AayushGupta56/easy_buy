import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/material.dart';
Widget backgroundWidget({Widget ? child}){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.fill,),

    ),
    child: child,
  );
}