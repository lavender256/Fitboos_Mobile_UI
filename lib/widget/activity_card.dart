import 'package:circle_chart/circle_chart.dart';
import 'package:fitness_mobile_ui/model/activity.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;

  ActivityCard({this.activity});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: size.width * .04),
      width: size.width * .35,
      height: size.height * .21,
      decoration: BoxDecoration(
          color: activity.color.withOpacity(.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            activity.title,
            style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontWeight: FontWeight.w500,
                fontSize: size.width * .04),
          ),
          SizedBox(
            width: size.width * .005,
          ),
          Container(width: size.width,
          height: size.height*.1,
            child: Stack(alignment: Alignment.center,
              children: [
                Center(child: CircleChart(progressNumber: activity.count, maxNumber: activity.manxCount,progressColor: activity.color,
                height: size.height*.09,
                  width: size.width*.8,
                  showRate: true,
                  backgroundColor: Colors.white,
                  rateTextStyle: TextStyle(
                    color: Colors.transparent,fontSize: 0
                  ),
                  animationDuration: Duration(seconds: 3),
                )),
                Icon(activity.icon,color: activity.color,size: size.width*.08,),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                activity.count.toInt().toString(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * .05),
              ),
              SizedBox(
                width: size.width * .01,
              ),
              Text(
                activity.unit,
                style: TextStyle(
                    color: Colors.black.withOpacity(.6),
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * .03),
              )
            ],
          ),
          Text(
            "Updated ${activity.status}",
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontWeight: FontWeight.w500,
                fontSize: size.width * .032),
          )
        ],
      ),
    );
  }
}
