import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * .04),
      width: size.width,
      height: size.height * .08,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: size.width * .1,
            height: size.width * .1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://s2.uupload.ir/files/15_crvm.jpg"))),
          ),
          SizedBox(
            width: size.width * .02,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hello Alexa", style: TextStyle(
              color: Colors.black.withOpacity(.5),
              fontWeight: FontWeight.w600,
              fontSize: size.width * .03),),
              Text(
                "Good Afternoon",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: size.width * .037),
              )
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(
             Iconsax.notification
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
