import 'package:fitness_mobile_ui/widget/profile_workout_card.dart';
import 'package:flutter/material.dart';

class ProfileActiveWorkOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*.27,
      padding: EdgeInsets.symmetric(horizontal: size.width*.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
          "Active WorkOuts",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: size.width * .05),
        ),
        SizedBox(height: size.height*.01,),
        ProfileWorkOutCard(title: "CrossFit",isFirst: true,count:8,maxCount:18),
        ProfileWorkOutCard(title: "ABS",count: 16,maxCount: 17,),
      ],),
    );
  }
}
