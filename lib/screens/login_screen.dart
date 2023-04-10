import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/screens/home_screen.dart';
import 'package:fitness_mobile_ui/screens/nav_screen.dart';
import 'package:fitness_mobile_ui/widget/login_with.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width*.77,
              height: size.height * .5,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,

                image: NetworkImage("https://s2.uupload.ir/files/27_bw1a.png",),

              )),
            ),
            Text(
              "Welcome to",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .05),
            ),
            Text(
              "fitboss fitness app".toUpperCase(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .07),
            ),
            Text(
              "Plans and start your daily workout & grow your fitness.",
              style: TextStyle(
                  color: Colors.black.withOpacity(.6),
                  fontWeight: FontWeight.w600,
                  fontSize: size.width * .035),
            ),
            GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>NavScreen())),
                child: LoginWith(title: "Login With google",gmail: true,imageUrl: "https://s2.uupload.ir/files/google_g_logo.svg_jycn.png",)),
            LoginWith(title: "Login With apple",imageUrl: "https://s2.uupload.ir/files/apple_hbt2.png",),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Text(
                "Not a member? ",
                style: TextStyle(wordSpacing: -1.2,
                    color: Colors.black.withOpacity(.6),
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * .04),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w400,
                    fontSize: size.width * .04),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
