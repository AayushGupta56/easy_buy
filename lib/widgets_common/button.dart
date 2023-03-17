import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({required onpress,required Color ?buttonColor,required Color textColor,required String ?title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
        //padding: EdgeInsets.all(12),
    ),

    onPressed: onpress,
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
