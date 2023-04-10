import 'package:fitness_mobile_ui/color.dart';
import 'package:fitness_mobile_ui/model/video.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
final int index;
final Video video;

VideoCard({this.index,this.video});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height*.03),
    width: size.width,
      height: size.height*.1,
      decoration: BoxDecoration(
        color: index==0?mainColor:secondColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(children: [
        Positioned(
          top: size.height*.01,
          left: size.width*.02,
          child: Container(width: size.width*.2,
          height: size.height*.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(video.imageUrl)
              )
            ),
            child: Stack(alignment: Alignment.center,
            children: [
              Container(width: size.width*.05,
                height: size.width*.05,
                decoration: BoxDecoration(
                    color: mainColor,
                    shape: BoxShape.circle
                ),
                child: Center(child: Icon(Icons.play_arrow,color:Colors.white,size: size.width*.04,),),
              ),
            ],
            ),
          ),
        ),
        Positioned(
            left: size.width*.25,
            top: size.height*.02,
            child: Text(video.title,style: TextStyle(color: index==0?Colors.white:Colors.black,fontWeight: FontWeight.w500,fontSize: size.width*.04),)),
        Positioned(
            left: size.width*.25,
            bottom: size.height*.02,
            child: Text("By ${video.coach}",style: TextStyle(color: index==0?Colors.white:Colors.black.withOpacity(.8),fontWeight: FontWeight.w400),)),
        Positioned(
          bottom: size.height*.02,
            right: size.width*.02,
            child: Text("${video.time} min",style: TextStyle(color: index==0?Colors.white:Colors.black.withOpacity(.8),fontWeight: FontWeight.w400),))

      ],),
    );
  }
}
