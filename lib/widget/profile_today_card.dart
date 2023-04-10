import 'package:fitness_mobile_ui/color.dart';
import 'package:flutter/material.dart';

class ProfileTodayCard extends StatelessWidget {
  final IconData icon;
  final double count;
  final String unit;

  ProfileTodayCard({this.icon, this.count, this.unit});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .02),
      width: size.width * .38,
      height: size.height * .06,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.3),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: mainColor,
          ),
          Spacer(),
          Text(
            count.toString(),
            style: TextStyle(color: Colors.white, fontSize: size.width * .045),
          ),
          SizedBox(
            width: size.width * .008,
          ),
          Text(
            unit,
            style: TextStyle(
                color: Colors.white,
                fontSize: size.width * .025,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
