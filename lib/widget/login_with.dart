import 'package:flutter/material.dart';

class LoginWith extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool gmail;
  final String imageUrl;


  LoginWith({this.title, this.icon, this.gmail=false,this.imageUrl});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .9,
      height: size.height * .07,
      decoration: BoxDecoration(
        color: gmail?Colors.white:Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: gmail
              ? Border.all(
                  color: Colors.black.withOpacity(.3),
                )
              : null),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl,width: size.width*.07,height: size.width*.07,),
          SizedBox(width: size.width*.02,),
          Text(title,style: TextStyle(color: gmail?Colors.black:Colors.white,fontWeight: FontWeight.w400,fontSize: size.width*.04),)],
      ),
    );
  }
}
