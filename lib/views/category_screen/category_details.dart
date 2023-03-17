import 'package:easy_buy/views/category_screen/item_details.dart';
import 'package:easy_buy/widgets_common/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/consts/consts.dart';
import 'package:get/get.dart';
class CategoryDeatils extends StatelessWidget {
  final String? title;

  const CategoryDeatils({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
        child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby Clothing"
                        .text
                        .fontFamily(semibold)
                        .size(14)
                        .color(fontGrey)
                        .makeCentered()
                        .box
                        .white
                        .size(150, 60)
                        .rounded
                        .white
                        .margin(EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            30.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            width: 200,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 8GB/512GB"
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          10.heightBox,
                          "\$600"
                              .text
                              .fontFamily(bold)
                              .color(Colors.black)
                              .size(16)
                              .make(),
                        ],
                      )
                          .box
                          .white
                          .margin(EdgeInsets.all(4))
                          .outerShadowSm
                          .roundedSM
                          .padding(EdgeInsets.all(12))
                          .make().onTap(() {
                            Get.to(()=>ItemDetails(title: "Dummy title"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
