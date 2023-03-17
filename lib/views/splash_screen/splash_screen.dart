import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/views/auth_screen/login_screen.dart';
import 'package:easy_buy/widgets_common/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SplashScreen extends StatefulWidget {

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>LoginScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 2));
    });
  }
  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                ),
              ),
              20.heightBox,
              appLogoWidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).blue100.make(),
              5.heightBox,
              appversion.text.blue100.make(),
              const Spacer(),
              credits.text.semiBold.blue100.size(18).make(),
              30.heightBox,

            ],
          ),
        ));
  }
}
