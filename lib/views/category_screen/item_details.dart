import 'package:easy_buy/consts/colors.dart';
import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/consts/lists.dart';
import 'package:easy_buy/widgets_common/button.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: darkFontGrey,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        height: 350,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                              .box
                              .margin(EdgeInsets.all(8))
                              .rounded
                              .clip(Clip.antiAlias)
                              .make();
                        }),
                    10.heightBox,
                    title!.text
                        .size(16)
                        .color(darkFontGrey)
                        .fontFamily(semibold)
                        .make()
                        .box
                        .color(Colors.transparent)
                        .padding(EdgeInsets.symmetric(horizontal: 8))
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      stepInt: true,
                      size: 25,
                    )
                        .box
                        .color(Colors.transparent)
                        .padding(EdgeInsets.symmetric(horizontal: 8))
                        .make(),
                    10.heightBox,
                    "\$3000 "
                        .text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(bold)
                        .make()
                        .box
                        .color(Colors.transparent)
                        .padding(EdgeInsets.symmetric(horizontal: 8))
                        .make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.fontFamily(semibold).white.make(),
                              5.heightBox,
                              "In House Brands"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        ),
                      ],
                    )
                        .box
                        .height(60)
                        .padding(EdgeInsets.symmetric(horizontal: 12))
                        .color(textfieldGrey)
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color".text.fontFamily(semibold).color(darkFontGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(
                                          EdgeInsets.symmetric(horizontal: 4))
                                      .make()),
                            )
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity".text.fontFamily(semibold).color(darkFontGrey).make(),
                            ),
                            Row(children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              "0"
                                  .text
                                  .size(16)
                                  .fontFamily(bold)
                                  .color(darkFontGrey)
                                  .make(),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                              10.widthBox,
                              "(0 available)".text.color(textfieldGrey).make()
                            ])
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total".text.fontFamily(semibold).color(darkFontGrey).make(),
                            ),
                            "\$0.00"
                                .text
                                .color(Colors.red)
                                .size(16)
                                .fontFamily(bold)
                                .make(),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make()
                      ],
                    ).box.color(Colors.transparent).make(),
                    10.heightBox,
                    "Description"
                        .text
                        .color(fontGrey)
                        .fontFamily(semibold)
                        .make(),
                    10.heightBox,
                    "This is a dummy item and description here dhnvljsdhv v vckhjbdvfb"
                        .text
                        .color(fontGrey)
                        .make(),
                    10.heightBox,
                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                          itemDetailButtonList.length,
                          (index) => ListTile(
                                trailing: Icon(Icons.arrow_forward),
                                title: itemDetailButtonList[index]
                                    .text
                                    .semiBold
                                    .color(fontGrey)
                                    .make(),
                              )),
                    ),
                    productsYouMayAlsoLike.text
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .size(16)
                        .make(),
                    15.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            6,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
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
                                    .margin(EdgeInsets.all(6))
                                    .roundedSM
                                    .padding(EdgeInsets.all(12))
                                    .make()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
              height: 60,
              width: double.infinity,
              child: ourButton(
                  onpress: () {},
                  buttonColor: Colors.red,
                  textColor: Colors.white,
                  title: "Add to Cart")),
        ],
      ),
    );
  }
}
