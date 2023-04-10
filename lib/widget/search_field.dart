import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';

class SearchField extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(

      padding: EdgeInsets.symmetric(horizontal: size.width*.01),
      width: size.width,
      height: size.height*.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black.withOpacity(.3,),width: 1)
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search courses',
            hintStyle: TextStyle(fontSize: size.width*.04),
            prefixIcon: Icon(FrinoIcons.f_search_2),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none
          ),
        ),
      )
    );
  }
}
