import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medic/consts/colors.dart';
import 'package:medic/utils/responsive.dart';
import 'package:medic/widgets/home_screen_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../consts/iconst.dart';
import '../widgets/drugStore_screen_wedgit.dart';

class DrugStoreScreen extends StatefulWidget {
  const DrugStoreScreen({super.key});

  @override
  State<DrugStoreScreen> createState() => _DrugStoreScreenState();
}

class _DrugStoreScreenState extends State<DrugStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 55,
            child: Row(children: [
              Expanded(
                  flex: 2, child: Text("Drug Store").text.bold.size(22).make()),
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        notificationIco,
                        width: 30,
                        height: 30,
                      ),
                      SvgPicture.asset(
                        chatIco,
                        width: 30,
                        height: 30,
                      ),
                      SvgPicture.asset(
                        dragIco,
                        width: 30,
                        height: 30,
                      ),
                    ],
                  )),
            ]),
          ),
          CostumeTextFilled(
            hintText: "Search meds here",
            Icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                searchIco, // change the width to 20
                fit: BoxFit.contain,
              ),
            ),
          ),
          12.heightBox,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(locationIco),
              8.widthBox,
              Text("Delevery Adress").text.make(),
              8.widthBox,
              Text("City,Street").text.bold.color(purple).make()
            ],
          ),
          SingleChildScrollView(
              child: Column(
            children: [
              24.heightBox,
              UploadYourData(),
              24.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Category())

            ],
          ))
        ]),
      ),
    );
  }
}
