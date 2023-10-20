import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/consts/colors.dart';
import 'package:medic/consts/iconst.dart';
import 'package:medic/models/suplemnt.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/Lists.dart';

Widget UploadYourData() {
  return Container(
    child: Container(
      height: 70,
      width: 375,
      decoration: BoxDecoration(
          color: beige, borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.widthBox,
          Container(
            height: 50,
            width: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15.0),
              child: SvgPicture.asset(docomintIco),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Have prescription?").text.size(16).bold.make()
                ],
              ),
              Row(
                children: [
                  Text("Upload and get your medicine in one tap!")
                      .text
                      .size(14)
                      .make()
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 50,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15.0),
              child: SvgPicture.asset(arrowIco),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget Category() {
  return Row(
    children: List.generate(
        maedicList.length,
        (index) => Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                height: 45,
                width: 80,
                decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(maedicList[index])
                        .text
                        .bold
                        .size(14)
                        .color(natureWhite)
                        .make()),
              ),
            )),
  );
}

Widget DrugProductSearch() {
  return GridView.builder(
      itemCount: Supplement.supList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.83,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
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
                  child:
                      Text(Supplement.supList[index].name).text.size(18).make(),
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
        ).box.size(170, 230).rounded.color(natureWhite).outerShadowSm.make();
      });
}
