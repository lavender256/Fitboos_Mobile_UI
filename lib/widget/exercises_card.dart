import 'package:fitness_mobile_ui/model/exercises.dart';
import 'package:flutter/material.dart';

import '../color.dart';

class ExercisesCard extends StatefulWidget {
  final Exercises exercises;
  final int index;

  ExercisesCard({this.exercises, this.index});

  @override
  State<ExercisesCard> createState() => _ExercisesCardState();
}

class _ExercisesCardState extends State<ExercisesCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(widget.exercises.imageUrl))),
      child: Stack(
        children: [
          Positioned(
              left: size.width * .04,
              bottom: size.width * .04,
              child: Text(
                widget.exercises.title.toUpperCase(),
                style: TextStyle(
                  letterSpacing: 1.2,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * .06),
              )),
        ],
      ),
    );
  }
}
