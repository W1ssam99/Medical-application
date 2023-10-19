import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/consts/colors.dart';
import 'package:medic/consts/iconst.dart';
import 'package:velocity_x/velocity_x.dart';

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
    children: List.generate(8, (index) => Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
        color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(16))
        )),
      
      
    )),
  );
}
