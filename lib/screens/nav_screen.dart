import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/data/data.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavScreen extends StatefulWidget {

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: PersistentTabView(
        context,
        margin: EdgeInsets.symmetric(horizontal: size.width*.02,vertical: size.height*.01),
        screens: screens(),
        items: navItems(),
        backgroundColor:navColor,
        navBarStyle: NavBarStyle.style15,
        navBarHeight: size.height*.075,
        handleAndroidBackButtonPress: false,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(35),
          colorBehindNavBar: Colors.white,
        ),
        itemAnimationProperties: ItemAnimationProperties(
            duration: Duration(milliseconds: 300),
            curve: Curves.linear
        ),
      ),
    );
  }
}
