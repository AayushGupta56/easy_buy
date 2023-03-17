import 'package:easy_buy/consts/lists.dart';
import 'package:easy_buy/views/auth_screen/signup_screen.dart';
import 'package:easy_buy/views/home_screen/home.dart';
import 'package:easy_buy/widgets_common/app_logo.dart';
import 'package:easy_buy/widgets_common/button.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/widgets_common/background_widget.dart';
import 'package:easy_buy/widgets_common/custom_textfield.dart';
import 'package:get/get.dart';
import 'package:easy_buy/consts/consts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            "Log in to $appname".text.white.fontFamily(bold).size(18).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextField(title: email, hint: emailhint),
                CustomTextField(title: password, hint: passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),
                5.heightBox,
                ourButton(
                  title: login,
                  buttonColor: Colors.red,
                  textColor: Colors.white,
                  onpress: () {
                    Get.to(()=>Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                ourButton(
                  title: signup,
                  buttonColor: Colors.orange[100],
                  textColor: Colors.red,
                  onpress: () {
                    Get.to(()=>const SignupScreen());
                  },
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                LoginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                        radius: 25,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ),
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
  }
}
