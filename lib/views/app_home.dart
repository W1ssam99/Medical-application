import 'package:flutter/material.dart';
import '../consts/colors.dart';
import '../consts/iconst.dart';
import 'account_screen.dart';
import 'drugstore_screen.dart';
import 'home_screen.dart';
import 'traker_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _currentIndex = 0;

  List screens = [
    HomeScreen(),
    DrugStoreScreen(),
    TrakerScreen(),
    AccountScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: green,
        unselectedItemColor: blackAccent,
        currentIndex: _currentIndex,
        selectedFontSize: 15,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
               homeIco,
              color: _currentIndex == 0 ? green : blackAccent,
              width: 28,
              height: 28,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
               shopIco,
              color: _currentIndex == 1 ? green : blackAccent,
              width: 28,
              height: 28,
            ),
            label: 'Drug Store',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
               trakerIco,
              color: _currentIndex == 2 ? green : blackAccent,
              width: 28,
              height: 28,
            ),
            label: 'Traker',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
               profileIco,
              color: _currentIndex == 3 ? green : blackAccent,
              width: 28,
              height: 28,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
