//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manag_app/screen/home_screen_profile.dart';
import 'package:manag_app/screen/home_screen_tab.dart';
import 'package:manag_app/screen/stat_screen_tab.dart';
import 'package:manag_app/screen/wallet_screen_tab.dart';
import 'package:manag_app/utils/constants.dart';

class MainScreenHost extends StatefulWidget {
  const MainScreenHost({super.key});

  @override
  State<MainScreenHost> createState() => _MainScreenHostState();
}

class _MainScreenHostState extends State<MainScreenHost> {
  var curretIndex = 0;

  Widget buildTabContent(int index) {
    switch (index) {
      case 0:
        return const HomeScreenTab();
      case 1:
        return const StatScreenTab();
      case 2:
        return const WalletScreenTab();
      case 3:
        return const HomeProfileTab();

      default:
        return const HomeScreenTab();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildTabContent(curretIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curretIndex,
        onTap: (index) {
          setState(() {
            curretIndex = index;
          });
          print(curretIndex);
        },
        selectedItemColor: secondaryDark,
        unselectedItemColor: fontLight,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            //Image.asset("assets/icons/home-1.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart),
            //Image.asset("assets/icons/chart-vertical.png"),
            label: "Stat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            //Image.asset("assets/icons/wallet.png"),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            //Image.asset("assets/icons/home-1.png"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
