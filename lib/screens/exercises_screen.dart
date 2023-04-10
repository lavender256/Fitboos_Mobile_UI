import 'package:fitness_mobile_ui/model/exercises.dart';
import 'package:fitness_mobile_ui/widget/exercises_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fitness_mobile_ui/data/data.dart';

class ExercisesScreen extends StatefulWidget {
  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(
                    left: size.width * .04, top: size.height * .07),
                width: size.width,
                height: size.height * .05,
                child: Text(
                  "Exercises".toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: size.width * .06),
                ),
              ),
            ),
            SliverPadding(
            padding: EdgeInsets.only(left: size.width*.02,bottom: size.height*.05,right: size.width*.02),
              sliver: SliverStaggeredGrid.countBuilder(
                  itemCount: exercisesList.length,
                  staggeredTileBuilder: (int index){
                    if(index==0){
                      return StaggeredTile.count(2, 1);
                    }
                    else if(index.isOdd || index%3==0){
                    return StaggeredTile.count(1, 1);
                    }
                    else{
                    return StaggeredTile.count(1, 2);
                    }
                  },
                  mainAxisSpacing: size.width * .02,
                  crossAxisSpacing: size.width * .02,
                  crossAxisCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    Exercises exercises = exercisesList[index];
                    return ExercisesCard(
                      exercises: exercises,
                      index: index,
                    );
                  }), ),

          ],
        ),
      ),
    );
  }
}
/*   :index!=6?StaggeredTile.count(1, 2): StaggeredTile.count(1, 1),*/