import 'package:fitness_mobile_ui/widget/profile_today_card.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';

class ProfileTodayActive extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*.04),
      width: size.width,
      height: size.height*.2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Today", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontSize: size.width * .05),),
          SizedBox(height: size.height*.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ProfileTodayCard(icon: Iconsax.heart_tick5,count: 70,unit: 'Bpm',),
          ProfileTodayCard(icon: Iconsax.trend_up,count: 2800,unit: 'Kcal',)
        ],),
          SizedBox(height: size.height*.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          ProfileTodayCard(icon: FrinoIcons.f_bed,count: 7,unit: "Hrs",),
          ProfileTodayCard(icon: FrinoIcons.f_gym,count: 4.8,unit: "Hrs",)
        ],)
      ],),
    );
  }
}
