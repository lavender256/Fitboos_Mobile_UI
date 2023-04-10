import 'package:fitness_mobile_ui/data/data.dart';
import 'package:fitness_mobile_ui/model/tutorial.dart';
import 'package:fitness_mobile_ui/model/video.dart';
import 'package:fitness_mobile_ui/widget/tutorial_video.dart';
import 'package:fitness_mobile_ui/widget/video_card.dart';
import 'package:flutter/material.dart';

class TutorialScreen extends StatefulWidget {
  final Tutorial tutorial;

  TutorialScreen({this.tutorial});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: TutorialVideo(
            imageUrl: widget.tutorial.imageUrl,
          )),
          SliverPadding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * .04, vertical: size.height * .04),
          sliver: SliverToBoxAdapter(
            child: Container(width: size.width,
            height: size.height*.1,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.tutorial.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: size.width*.047),),
                  Text(widget.tutorial.content,style: TextStyle(color: Colors.black.withOpacity(.6),fontSize: size.width*.038),)
                ],
              ),
            ),
          ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
                left: size.width * .04,bottom: size.height*.02),
            sliver: SliverToBoxAdapter(
              child: Container(
                width: size.width,
                child:
                Text(
                  "Video",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: size.width * .045),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: size.width*.04),
            sliver: SliverList(delegate: SliverChildBuilderDelegate((BuildContext context,int index){
              Video video=videoList[index];
              return VideoCard(index:index,video: video);
            },childCount: videoList.length)),
          )
        ],
      ),
    );
  }
}
