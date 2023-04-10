import 'package:circle_chart/circle_chart.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class ProfileWorkOutCard extends StatelessWidget {
final int count;
final String title;
final bool isFirst;
final int maxCount;

ProfileWorkOutCard({this.count, this.title, this.isFirst=false,this.maxCount});

@override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      height: size.height * .11,
      decoration: BoxDecoration(
        color: isFirst?mainColor:secondColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
              top: size.height * .02,
              left: size.width * .04,
              child: Container(
                  width: size.width * .15,
                  decoration: BoxDecoration(
                      color: isFirst?Colors.white:mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                        title,
                        style: TextStyle(color: isFirst?mainColor:Colors.white),
                      )))),
          Positioned(
              bottom: size.height*.02,
              left: size.width*.04,
              child: Text(
                "${count}/${maxCount} Workout  Completed",
                style: TextStyle(
                    color: isFirst?Colors.white:Colors.black.withOpacity(.9), fontSize: size.width * .05),
              )),
          Positioned(
              top: 0,
              right: size.width*.04,
              bottom: 0,
              child: Container(width: size.width*.2,
          height: size.height,
            child: CircleChart(progressNumber: count.toDouble(),
              maxNumber: maxCount,
              height: size.height*.1,
              progressColor: Colors.white,
              backgroundColor: Colors.white54,
              rateTextStyle: TextStyle(fontSize: 0.0,color: Colors.transparent),
            ),
          ))
        ],
      ),
    );
  }
}
