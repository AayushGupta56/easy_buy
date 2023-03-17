import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/consts/lists.dart';
import 'package:easy_buy/views/category_screen/category_details.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/widgets_common/background_widget.dart';
import 'package:get/get.dart';
class CategorySceen extends StatelessWidget {
  const CategorySceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
        child: Scaffold(
      appBar: AppBar(

        shadowColor: Colors.transparent,
        title: categories.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
            itemCount: 9,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                mainAxisExtent: 190),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImages[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index].text.color(fontGrey).align(TextAlign.center).fontFamily(bold).make()
                ],
              ).box.rounded.white.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                Get.to(()=>CategoryDeatils(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
