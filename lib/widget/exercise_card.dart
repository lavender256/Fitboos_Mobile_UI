import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/model/ads.dart';
import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  final Ads ads;

  AdsCard({this.ads});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
              image: NetworkImage(ads.imageUrl))),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
              Colors.black.withOpacity(.7),
              Colors.black.withOpacity(.5),
              Colors.black.withOpacity(.3),
              Colors.transparent,
              Colors.transparent,
              Colors.transparent
            ])),
          ),
          Container(
              padding: EdgeInsets.only(left: size.width * .02),
              width: size.width * .52,
              height: size.height,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ads.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: size.width * .045),
                    ),
                    Container(
                      width: size.width * .3,
                      height: size.height * .045,
                      decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "Contact now",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                        ),
                      ),
                    )
                  ])),

        ],
      ),
    );
  }
}
