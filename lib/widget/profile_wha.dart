import 'package:fitness_mobile_ui/color.dart';
import 'package:flutter/material.dart';

class ProfileWHA extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Container(
      width: size.width * .7,
      height: size.height * .06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "55 ",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .06)),
                  TextSpan(
                      text: "kg",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * .045))
                ]),
              ),
              Text(
                "Weight",
                style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          Container(width: 2,height: size.height*.05,color: mainColor,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "175 ",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .06)),
                  TextSpan(
                      text: "cm",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * .045))
                ]),
              ),
              Text(
                "Height",
                style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          Container(width: 2,height: size.height*.05,color: mainColor,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "23 ",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w800,
                          fontSize: size.width * .06)),
                  TextSpan(
                      text: "year",
                      style: TextStyle(
                          color: Colors.black.withOpacity(.8),
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * .045))
                ]),
              ),
              Text(
                "Age",
                style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
