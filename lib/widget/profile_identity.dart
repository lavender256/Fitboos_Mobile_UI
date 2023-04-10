import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
import 'package:blur/blur.dart';
import '../color.dart';

class ProfileIdentity extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: size.height*.3,
            child:Stack(alignment: Alignment.center,
              children: [
                Container(width: size.width,
                height: size.height,
                 child: FittedBox(
                     fit: BoxFit.cover,
                     child: Image.network("https://s2.uupload.ir/files/07_8rjl.jpg").blurred(blur: 20,blurColor: Colors.black)),
                ),
              Positioned(top: size.height*.08,
                child: Container(
                    width: size.width * .4,
                    height: size.width * .4,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width * .4,
                          height: size.width * .4,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(fit: BoxFit.cover,
                                  image: NetworkImage("https://s2.uupload.ir/files/07_8rjl.jpg")
                              ),
                              border: Border.all(color: mainColor, width: 3)),
                        ),
                        Positioned(
                          right: 0,
                          bottom: size.height * .01,
                          child: Container(
                            width: size.width * .08,
                            height: size.width * .08,
                            decoration: BoxDecoration(
                                border: Border.all(color: mainColor,width: 2),
                                color: Colors.white,
                                shape: BoxShape.circle),
                            child: IconButton(
                              icon: Icon(
                                Iconsax.gallery_edit,
                                size: size.width * .04,
                                color: mainColor,
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),

                      ],
                    )),
              ),
                Positioned(
                    top: size.height*.04,
                    left: size.width*.04,
                    child: Text(
                      "My Profile".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width * .06),
                    )),
                Positioned(
                    top: size.height*.04,
                    right: size.width*.06,
                    child: Text(
                      "Exit".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white, fontSize: size.width * .04),
                    )),
            ],)
          ),
          SizedBox(height: size.height*.02,),
          Text(
            "Alexa Grande",
            style: TextStyle(
                color: Colors.black,
                fontSize: size.width * .06,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: size.height*.01,),
          Text(
            "United States",
            style: TextStyle(
                color: Colors.black.withOpacity(.7),
                fontSize: size.width * .04,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
