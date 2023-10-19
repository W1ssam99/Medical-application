import 'package:flutter/material.dart';
import 'package:medic/consts/Lists.dart';
import 'package:medic/consts/picture.dart';
import 'package:medic/models/suplemnt.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../consts/colors.dart';
import '../views/supdetail_screen.dart';

Widget CostumeTextFilled({hintText, Icon}) {
  return Container(
    height: 55,
    child: TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            gapPadding: 435,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
                color: Colors.green,
                width: 4.6), // add this line to change the border color
          ),
          hintText: hintText,
          prefixIcon: Icon),
    ),
  );
}

Widget AdsContainer({text}) {
  return Stack(
    children: [
      Container(
        width: 375,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
            image: AssetImage("assets/images/sublement.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        width: 375,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Container(
          height: 40,
          width: 105,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Track your meds!")
                        .text
                        .bold
                        .color(natureWhite)
                        .size(18)
                        .make(),
                    5.heightBox,
                    Text("Add up to 5 patients for free")
                        .text
                        .color(natureWhite)
                        .make(),
                    20.heightBox,
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text("See detail").text.size(18).bold.make(),
                        ),
                      ).box.roundedFull.white.size(150, 40).make(),
                    ),
                  ],
                ),
              ),
            ],
          ).box.outerShadowSm.make(),
        ),
      ),
    ],
  );
}

Widget OrderDelevery({text}) {
  return Container(
    width: 375,
    height: 150,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 12),
          child: Row(
            children: [
              10.widthBox,
              SvgPicture.asset("assets/icons/truck-fast.svg"),
              13.widthBox,
              Text("Your order is on the way!").text.white.size(18).bold.make(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 12),
          child: Row(
            children: [
              13.widthBox,
              Text("Have you taken your medicine yet?")
                  .text
                  .white
                  .size(18)
                  .bold
                  .make(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7, left: 200),
          child: Container(
            height: 40,
            width: 145,
            child: Center(
                child: Text("Track order status")
                    .text
                    .white
                    .size(16.5)
                    .bold
                    .make()),
          ).box.rounded.make(),
        )
      ],
    ),
  ).box.color(purple).outerShadowSm.rounded.make();
}

Widget ProductCard({ontap}) {
  return Row(
    children: List.generate(
      Supplement.supList.length,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 13, bottom: 13, left: 2),
        child: GestureDetector(
          onTap: () {
            ontap;
          },
          child: Column(
            children: [
              Container(
                height: 115,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage(Supplement.supList[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, bottom: 8),
                    child: Text(Supplement.supList[index].name)
                        .text
                        .size(18)
                        .make(),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: Text(Supplement.supList[index].Price)
                        .text
                        .bold
                        .size(19)
                        .make(),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4, bottom: 8),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        2.widthBox,
                        Text(Supplement.supList[index].city),
                      ],
                    ),
                  )),
            ],
          ).box.size(170, 230).rounded.color(natureWhite).outerShadowSm.make(),
        ),
      ),
    ),
  );
}
