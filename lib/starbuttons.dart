import 'package:flutter/material.dart';
import 'dart:ui';
import 'buttons-file.dart';
import 'package:audioplayers/audio_cache.dart';
import 'functions.dart';

Sbuttons thebuttons = Sbuttons();
void playSound(sound) {
  final player = AudioCache();
  player.play(sound);
}

class StarButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        title: Text(
          "Star Buttons",
          style: TextStyle(
            fontFamily: 'Starjedi',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: drawerGeral(context),
      body: ListView.builder(
        //padding: const EdgeInsets.all(8),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              playSound(thebuttons.getButtonSound(index));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 110,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundImage: AssetImage(thebuttons.getButtonImage(index)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
