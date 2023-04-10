import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/data/data.dart';
import 'package:fitness_mobile_ui/model/ads.dart';
import 'package:fitness_mobile_ui/widget/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class VerticalSlider extends StatefulWidget {
  @override
  State<VerticalSlider> createState() => _VerticalSliderState();
}

class _VerticalSliderState extends State<VerticalSlider> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * .2,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * .21,
              child: CarouselSlider.builder(
                  itemCount: adsList.length,
                  itemBuilder: (BuildContext context, int index, int realIndex) {
                    Ads ads = adsList[index];
                    return AdsCard(
                      ads: ads,
                    );
                  },
                  options: CarouselOptions(
                      scrollDirection: Axis.vertical,
                      viewportFraction: 1,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlay: true,
                      reverse: true,
                      autoPlayCurve: Curves.linear,
                      onPageChanged: (int index, reason) {
                        setState(() {
                          currentIndex=index;
                        });
                      })),
            ),
            Positioned(
              right: size.width * .03,
              top: size.height * .02,
              bottom: size.height * .02,
              child: Container(
                height: size.height * .5,
                child: Center(
                  child: AnimatedSmoothIndicator(
                    axisDirection: Axis.vertical,
                    count: adsList.length,
                    activeIndex: currentIndex,
                    effect: ScaleEffect(
                      dotHeight: size.width*.015,
                      dotWidth: size.width*.015,
                      dotColor: Colors.white,
                      activeDotColor: mainColor
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
