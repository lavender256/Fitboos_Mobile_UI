import 'package:fitness_mobile_ui/model/tutorial.dart';
import 'package:flutter/material.dart';

class TutorialCard extends StatelessWidget {
  final Tutorial tutorial;

  TutorialCard({this.tutorial});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(margin: EdgeInsets.only(left: size.width*.04),
      height: size.height,
      width: size.width * .75,
      decoration: BoxDecoration(
        color: Colors.black54,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(tutorial.imageUrl))),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent, Colors.black.withOpacity(.3),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.7),

                ])),
          ),
          Container(
            padding: EdgeInsets.only(left: size.width*.02,bottom: size.height*.03),
            width: size.width * .5,
            height: size.height,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text(tutorial.title,style: TextStyle(color: Colors.white,fontSize: size.width*.045,fontWeight: FontWeight.w600),),
              SizedBox(height: size.height*.01,),
              Row(children: [
                Text("${tutorial.minsVideo} min,",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: size.width*.032,fontWeight: FontWeight.w600),),
                SizedBox(width: size.width*.008,),
                Text("${tutorial.countVideos} Videos,",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: size.width*.032,fontWeight: FontWeight.w600),)
              ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
