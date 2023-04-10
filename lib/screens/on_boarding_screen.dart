import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:fitness_mobile_ui/data/data.dart';
import '../color.dart';
import 'nav_screen.dart';

class OnBoardingScreen extends StatefulWidget {

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: IntroViewsFlutter(
          [
            PageViewModel(
                body: Text(
                  introBody[0],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * .05,
                      fontWeight: FontWeight.w900),
                ),
                pageBackground: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(introImage[0]),
                          fit: BoxFit.cover)),
                ),
                bubble: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(introImage[0]),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  introTitle[0].toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * .08),
                )),
            PageViewModel(
                body: Text(
                  introBody[1],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * .05,
                      fontWeight: FontWeight.w900),
                ),
                pageBackground: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(alignment: Alignment.centerLeft,
                          image: NetworkImage(introImage[1]),
                          fit: BoxFit.cover)),
                ),
                bubble: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(introImage[1]),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  introTitle[1].toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * .08),
                )),
            PageViewModel(
                body: Text(
                  introBody[2],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * .05,
                      fontWeight: FontWeight.w900),
                ),
                pageBackground: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(alignment: Alignment.center,
                          image: NetworkImage(introImage[2]),
                          fit: BoxFit.cover)),
                ),
                bubble: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(introImage[2]),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  introTitle[2].toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * .08),
                )),
            PageViewModel(
                body: Text(
                  introBody[3],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * .05,
                      fontWeight: FontWeight.w900),
                ),
                pageBackground: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(introImage[3]),
                          fit: BoxFit.cover)),
                ),
                bubble: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(introImage[1]),
                          fit: BoxFit.cover)),
                ),
                title: Text(
                  introTitle[3].toUpperCase(),
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * .08),
                )),
          ],
          columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
          showNextButton: true,
          showBackButton: true,

          onTapDoneButton: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => NavScreen())),
        ),
      ),
    );
  }
}
