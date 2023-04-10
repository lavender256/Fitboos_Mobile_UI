import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/data/data.dart';
import 'package:fitness_mobile_ui/model/activity.dart';
import 'package:fitness_mobile_ui/model/tutorial.dart';
import 'package:fitness_mobile_ui/screens/tutotial_screen.dart';
import 'package:fitness_mobile_ui/widget/activity_card.dart';
import 'package:fitness_mobile_ui/widget/profile_header.dart';
import 'package:fitness_mobile_ui/widget/search_field.dart';
import 'package:fitness_mobile_ui/widget/tutorial_card.dart';
import 'package:fitness_mobile_ui/widget/vertical_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ProfileHeader()),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .02),
              sliver: SliverToBoxAdapter(
                child: SearchField(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: size.width * .04),
              sliver: SliverToBoxAdapter(
                child: VerticalSlider(),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .018),
              sliver: SliverToBoxAdapter(
                child: Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Activity",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * .045),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: size.width * .04,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
             child: Container(
               width: size.width,
               height: size.height*.2,
               child: ListView.builder(
                 itemCount: activityList.length,
                   scrollDirection: Axis.horizontal,
                   itemBuilder: (BuildContext context,int index){
                 Activity activity=activityList[index];
                 return ActivityCard(activity: activity,);
               }),
             ),
           ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .018),
              sliver: SliverToBoxAdapter(
                child: Container(
                  width: size.width,
                  child:
                      Text(
                        "Trending tutorial",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: size.width * .045),
                      ),
                ),
              ),
            ),
             SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: size.height*.06),
                  width: size.width,
                  height: size.height*.21,
                  child: ListView.builder(
                      itemCount: tutorialList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context,int index){
                        Tutorial tutorial=tutorialList[index];
                        return GestureDetector(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>TutorialScreen(tutorial: tutorial))),
                            child: TutorialCard(tutorial: tutorial,));
                      }),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


