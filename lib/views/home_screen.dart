import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/consts/iconst.dart';
import 'package:medic/views/pushvewis/seeAll.dart';
import 'package:medic/views/supdetail_screen.dart';

import 'package:velocity_x/velocity_x.dart';
import '../consts/colors.dart';
import '../utils/responsive.dart';
import '../widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Row(children: [
              Expanded(
                  flex: 2,
                  child: CostumeTextFilled(
                    hintText: "Search",
                    Icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        searchIco, // change the width to 20
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
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
            24.heightBox,
            AdsContainer(),
            44.heightBox,
            OrderDelevery(),
            24.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "New Products".text.size(20).bold.make(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SeeAll()),
                    );
                  },
                  child: "See all".text.size(14).color(purple).make(),
                )
              ],
            ),
            22.heightBox,
            StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('products')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else
                    return
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ProductCard(snapshot.data!
                          as QuerySnapshot<Map<String, dynamic>>));
                })
          ],
        ),
      ),
    ));
  }
}
