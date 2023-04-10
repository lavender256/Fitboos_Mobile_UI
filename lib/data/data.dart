import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/model/activity.dart';
import 'package:fitness_mobile_ui/model/ads.dart';
import 'package:fitness_mobile_ui/model/intro.dart';
import 'package:fitness_mobile_ui/model/tutorial.dart';
import 'package:fitness_mobile_ui/model/video.dart';
import 'package:fitness_mobile_ui/model/exercises.dart';
import 'package:fitness_mobile_ui/screens/exercises_screen.dart';
import 'package:fitness_mobile_ui/screens/home_screen.dart';
import 'package:fitness_mobile_ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<Ads> adsList = [
  Ads(
      title: "Refresh body with\nYoga",
      imageUrl: "https://s2.uupload.ir/files/20_gc8j.jpg"),
  Ads(
      title: "Now Gym Smarter\nWith AccuGym",
      imageUrl: "https://s2.uupload.ir/files/10_tzn2.jpg"),
  Ads(
      title: "Healthy Diet Greater\nin People",
      imageUrl: "https://s2.uupload.ir/files/23_mmk.jpg"),
  Ads(
      title: "Combat Gym Dread and\nFitness Goals",
      imageUrl: "https://s2.uupload.ir/files/9_pkhe.jpg")
];

List<Activity> activityList = [
  Activity(
      color: Color(0xff00ff7f),
      title: "Steps",
      status: "2m ago",
      icon: FrinoIcons.f_forward,
      count: 8854,
      manxCount: 10000,
      unit: ""),
  Activity(
      color: Colors.orange,
      title: "Workout",
      status: "1m ago",
      icon: FrinoIcons.f_gym,
      count: 2.1,
      manxCount: 5,
      unit: "hours"),
  Activity(
      color: mainColor,
      title: "Heart rate",
      status: "0m ago",
      icon: Iconsax.heart_tick5,
      count: 102,
      manxCount: 200,
      unit: "bpm")
];

List<Tutorial> tutorialList = [
  Tutorial(
      title: "Exercise With Ball",
      minsVideo: 70,
      countVideos: 8,
      imageUrl: "https://s2.uupload.ir/files/26_id2.jpg",
      content:
          "Stability balls — also called exercise balls, balance balls, Swiss balls,or fitness balls are more than just fun to sit and bounce on"),
  Tutorial(
      title: "Essential Yoga Tutorial",
      minsVideo: 200,
      countVideos: 12,
      imageUrl: "https://s2.uupload.ir/files/15_crvm.jpg",
      content:
          "Essential Yoga  for Complete Beginners! All newables\nWelcome - Can Start Here! Get on the  Mat and Start\nBuilding the Foundation of your own"),
  Tutorial(
      title: "SixPack ",
      minsVideo: 120,
      countVideos: 17,
      imageUrl: "https://s2.uupload.ir/files/24_b4wy.jpg",
      content:
          "Want to lose belly fat and get six pack abs for the summer? Start sculpting your abs with this super effective abs workout app. Workouts are suitable for ..."),
];

List<Video> videoList = [
  Video(
      imageUrl: "https://s2.uupload.ir/files/16_7x9x.jpg",
      title: "Es.Yoga for Complete Beginners-1",
      coach: "Anjel Alexa",
      time: "10:32"),
  Video(
      imageUrl: "https://s2.uupload.ir/files/14_2k14.jpg",
      title: "Es.Yoga for Complete Beginners-2",
      coach: "Anjel Alexa",
      time: "20:12"),
  Video(
      imageUrl: "https://s2.uupload.ir/files/17_1rsh.jpg",
      title: "Es.Yoga for Complete Beginners-3",
      coach: "Anjel Alexa",
      time: "30:00"),
  Video(
      imageUrl: "https://s2.uupload.ir/files/20_gc8j.jpg",
      title: "Es.Yoga for Complete Beginners-4",
      coach: "Anjel Alexa",
      time: "10:32"),
  Video(
      imageUrl: "https://s2.uupload.ir/files/21_nopo.jpg",
      title: "Es.Yoga for Complete Beginners-5",
      coach: "Anjel Alexa",
      time: "12:32"),
];

List<Widget> screens() {
  return [
    HomeScreen(),
    ExercisesScreen(),
    Scaffold(
      backgroundColor: Colors.red,
    ),
    Scaffold(
      backgroundColor: Colors.white,
    ),
    ProfileScreen()
  ];
}

List<PersistentBottomNavBarItem> navItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(
        Iconsax.home_15,
      ),
      inactiveIcon: Icon(Iconsax.home),
      title: "Home",
      activeColorPrimary: mainColor,
      inactiveColorPrimary: Colors.black.withOpacity(.7),
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(FrinoIcons.f_gym),
      title: "Activity",
      activeColorPrimary: mainColor,
      inactiveColorPrimary: Colors.black.withOpacity(.7),
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(
        Iconsax.add,
      ),
      activeColorPrimary: mainColor,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.black,
    ),
    PersistentBottomNavBarItem(
        icon: Icon(Iconsax.record_circle5),
        inactiveIcon: Icon(Iconsax.record_circle4),
        title: "Record",
        textStyle: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: Colors.black.withOpacity(.7)),
    PersistentBottomNavBarItem(
      icon: Icon(FrinoIcons.f_female),
      title: "Account",
      activeColorPrimary: mainColor,
      inactiveColorPrimary: Colors.black.withOpacity(.7),
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
  ];
}

List<String> introTitle = [
  "Quick Workout",
  "Workout Tracker",
  "Time-Based Workout",
  "Workout Creator" ,

];
List<String> introBody = [
  "Pilates , muscle-Building , Yoga , Strength and more ",
  "Easily Track & Plan Workout\at the Gym or From Home",
  "A Secret Way to Become a Fitness",
  "Hit your Goals with Daily Workouts , meals and Meditations"
];
List<String> introImage = [
  'https://s2.uupload.ir/files/09_ydm.jpg',
  'https://s2.uupload.ir/files/04_mg12.jpg',
  'https://s2.uupload.ir/files/05_s0un.jpg',
  'https://s2.uupload.ir/files/06_qh6z.jpg',

];

List<Exercises> exercisesList=[
  Exercises(title: "Pilates",imageUrl: 'https://s2.uupload.ir/files/19_a7ew.jpg'),
  Exercises(title: "CrossFit",imageUrl: 'https://s2.uupload.ir/files/35_xir.jpg'),
  Exercises(title: "Aerobic",imageUrl: 'https://s2.uupload.ir/files/28_q5rd.jpg'),
  Exercises(title: "Trx",imageUrl: 'https://s2.uupload.ir/files/32_stbh.jpg'),
  Exercises(title: "Yoga",imageUrl: 'https://s2.uupload.ir/files/21_nopo.jpg'),
  Exercises(title: "Zumba",imageUrl: 'https://s2.uupload.ir/files/btvkm5de6gzpv3uk6zwsui_hhc4.jpg'),
  Exercises(title: "Boxing",imageUrl: 'https://s2.uupload.ir/files/02_vwsv.jpg'),
  Exercises(title: "CX Worx",imageUrl: 'https://s2.uupload.ir/files/31_vg6v.jpg'),
  Exercises(title: "Running",imageUrl: 'https://s2.uupload.ir/files/36_znkc.jpg'),
  Exercises(title: "Gym",imageUrl: 'https://s2.uupload.ir/files/6_ve14.jpg'),
];