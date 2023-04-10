import 'package:fitness_mobile_ui/color.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';
class TutorialVideo extends StatefulWidget {
final String imageUrl;

TutorialVideo({this.imageUrl});

@override
  State<TutorialVideo> createState() => _TutorialVideoState();
}

class _TutorialVideoState extends State<TutorialVideo> {
  bool  isLike=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(width: size.width,
      height: size.height*.35,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
              image: NetworkImage(widget.imageUrl)
          )
      ),
      child: Stack(alignment: Alignment.center,
        children: [
         Container(width: size.width*.15,
         height: size.width*.15,
           decoration: BoxDecoration(
             color: mainColor,
             shape: BoxShape.circle
           ),
           child: Center(child: Icon(Icons.play_arrow,color:Colors.white),),
         ),
          Positioned(
            top: size.height*.05,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width*.04),
              width: size.width,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: size.width*.11,
                height: size.width*.11,
                decoration: BoxDecoration(
                  color: mainColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: IconButton(icon: Icon(Icons.arrow_back_ios_outlined,color: mainColor,), onPressed: ()=>Navigator.pop(context),),),
                ),
                IconButton(icon: Icon(isLike?Iconsax.heart:Iconsax.heart5,size: size.width*.08,color: mainColor,), onPressed: (){
                  setState(() {
                    isLike=!isLike;
                  });
                })
              ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
