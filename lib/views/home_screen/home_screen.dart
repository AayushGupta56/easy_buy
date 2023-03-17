import 'package:easy_buy/views/home_screen/components/featured_buttons.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/consts/lists.dart';
import 'package:easy_buy/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: searchAnything,
                    hintStyle:
                        TextStyle(color: textfieldGrey, fontFamily: bold)),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        height: 150,
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        enlargeCenterPage: true,
                        itemCount: slidersList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              slidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .clip(Clip.antiAlias)
                                .rounded
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make(),
                          );
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => homeButtons(
                              width: context.screenWidth / 2.5,
                              hieght: context.screenHeight * 0.12,
                              icon: index == 0 ? icTodaysDeal : icFlashDeal,
                              title: index == 0 ? todayDeal : flashSale)),
                    ),
                    16.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        height: 150,
                        autoPlayAnimationDuration: Duration(milliseconds: 100),
                        enlargeCenterPage: true,
                        itemCount: secondSlidersList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              secondSlidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .clip(Clip.antiAlias)
                                .rounded
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make(),
                          );
                        }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        3,
                        (index) => homeButtons(
                          width: context.screenWidth / 3.4,
                          hieght: context.screenHeight * 0.12,
                          icon: index == 0
                              ? icTopCategories
                              : index == 1
                                  ? icBrands
                                  : icTopSeller,
                          title: index == 0
                              ? topCategories
                              : index == 1
                                  ? brand
                                  : topSeller,
                        ),
                      ),
                    ),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text
                            .size(18)
                            .fontFamily(semibold)
                            .color(fontGrey)
                            .make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              featuredButtons(
                                  title: featuredTitles1[index],
                                  icon: featuredImages1[index]),
                              10.heightBox,
                              featuredButtons(
                                  title: featuredTitles2[index],
                                  icon: featuredImages2[index]),
                            ],
                          ),
                        ).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProducts.text
                              .fontFamily(bold)
                              .size(18)
                              .white
                              .make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        height: 150,
                        autoPlayAnimationDuration: Duration(milliseconds: 100),
                        enlargeCenterPage: true,
                        itemCount: secondSlidersList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(
                              secondSlidersList[index],
                              fit: BoxFit.fill,
                            )
                                .box
                                .clip(Clip.antiAlias)
                                .rounded
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make(),
                          );
                        }),
                    20.heightBox,
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 300,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8),
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                imgP5,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Spacer(),
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
                              .roundedSM
                              .padding(EdgeInsets.all(12))
                              .make();
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
