import 'package:flutter/material.dart';
import 'buttons-file.dart';
import 'package:Starplace/Screens/starbuttons.dart';

class BuildGrid extends StatelessWidget {
  BuildGrid({@required this.saga});
  final Sagas saga;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: thebuttons.getlistSize(saga),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            playSound(thebuttons.getButtonSound(saga, index));
          },
          child: Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 110,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 110.0,
                backgroundImage: AssetImage(
                  thebuttons.getButtonImage(saga, index),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
