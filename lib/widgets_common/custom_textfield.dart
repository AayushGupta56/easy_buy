import 'package:easy_buy/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomTextField({String?title,String?hint,controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.red).fontFamily(semibold).size(16).make(),
      TextFormField(
        //controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: textfieldGrey,
            fontFamily: semibold,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          //border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      5.heightBox,
    ],
  );
}
