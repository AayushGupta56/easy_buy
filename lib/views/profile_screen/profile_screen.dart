import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/consts/lists.dart';
import 'package:easy_buy/widgets_common/background_widget.dart';
import 'package:flutter/material.dart';
import 'package:easy_buy/consts/consts.dart';
import 'package:easy_buy/views/profile_screen/components/details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ).onTap(() {}),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      Image.asset(
                        profilePic,
                        width: 100,
                        fit: BoxFit.cover,
                      ).box.clip(Clip.antiAlias).roundedFull.make(),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Aayush Gupta".text.white.fontFamily(semibold).make(),
                          "aayushgupt12@gmail.com".text.size(5).white.make(),
                        ],
                      )),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: BorderSide(
                            color: Colors.white,
                          )),
                          onPressed: () {},
                          child: logout.text.white.fontFamily(semibold).make())
                    ],
                  ),
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(
                        width: context.screenWidth / 3.34,
                        title: "in your cart",
                        count: "0"),
                    detailsCard(
                        width: context.screenWidth / 3.34,
                        title: "in your wishlist",
                        count: "0"),
                    detailsCard(
                        width: context.screenWidth / 3.34,
                        title: "your orders",
                        count: "0"),
                  ],
                ),
                 
                ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.asset(
                              profileButtonIcon[index],
                              width: 22,
                            ),
                            title: profileButtonList[index]
                                .text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return Divider(
                            color: lightGrey,
                          );
                        },
                        itemCount: profileButtonList.length)
                    .box
                    .white
                    .shadowSm
                    .margin(EdgeInsets.all(12)).rounded
                    .padding(EdgeInsets.all(12))
                    .make().box.color(Colors.red).make(),
              ],
            )),
      ),
    );
  }
}
