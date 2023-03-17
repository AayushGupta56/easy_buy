import 'package:easy_buy/widgets_common/app_logo.dart';
import 'package:easy_buy/widgets_common/button.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/widgets_common/background_widget.dart';
import 'package:easy_buy/widgets_common/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:easy_buy/consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                appLogoWidget(),
                10.heightBox,
                "Sign up in $appname".text.white.fontFamily(bold)
                    .size(18)
                    .make(),
                20.heightBox,
                Column(
                  children: [
                    CustomTextField(title: name, hint: nameHint),
                    CustomTextField(title: email, hint: emailhint),
                    CustomTextField(title: password, hint: passwordHint),
                    CustomTextField(title: confirmPassword, hint: passwordHint),
                    5.heightBox,
                    ourButton(
                      title: signup,
                      buttonColor: Colors.orange[100],
                      textColor: Colors.red,
                      onpress: () {},
                    ).box.width(context.screenWidth - 50).make(),
                    10.heightBox,
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: alreadyHaveAnAccount,
                            style: TextStyle(
                              color: fontGrey,
                              fontFamily: bold,
                            ),
                          ),
                          TextSpan(
                            text: " ? $login",
                            style: TextStyle(
                              color: Colors.red,
                              fontFamily: bold,
                            ),
                          ),
                        ]
                    ),).onTap(() {Get.back();})
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(),
              ],
            ),
          ),
        ));
    ;
  }
}
