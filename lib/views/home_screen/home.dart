import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_buy/views/cart_screen/cart_screen.dart';
import 'package:easy_buy/views/category_screen/category_screen.dart';
import 'package:easy_buy/views/home_screen/home_screen.dart';
import 'package:easy_buy/views/profile_screen/profile_screen.dart';
import 'package:easy_buy/consts/lists.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, height: 20), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, height: 20), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, height: 20), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, height: 20), label: account),
    ];
    var navBody = [
      HomeScreen(),
      CategorySceen(),
      CartScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 60,
          child: BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            items: navbarItem,
            selectedItemColor: Colors.greenAccent,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            onTap: (newvalue) {
              controller.currentNavIndex.value = newvalue;
              print(newvalue);
            },
          ),
        ),
      ),
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),

        ],
      ),
    );
  }
}
