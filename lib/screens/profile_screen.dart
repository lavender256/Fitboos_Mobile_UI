import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/widget/profile_active_workout.dart';
import 'package:fitness_mobile_ui/widget/profile_identity.dart';
import 'package:fitness_mobile_ui/widget/profile_today_activ.dart';
import 'package:fitness_mobile_ui/widget/profile_wha.dart';
import 'package:fitness_mobile_ui/widget/profile_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ProfileIdentity(),
              SizedBox(height:size.height*.02,),
              ProfileWHA(),
              SizedBox(height:size.height*.02,),
              ProfileTodayActive(),
              SizedBox(height:size.height*.02,),
              ProfileActiveWorkOut()
            ],
          ),
        ),
      ),
    );
  }
}
