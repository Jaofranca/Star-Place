import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:Starplace/Components/build_grid.dart';
import 'package:Starplace/Components/functions.dart';
import 'package:Starplace/Components/buttons-file.dart';

Sbuttons thebuttons = Sbuttons();
void playSound(sound) {
  final player = AudioCache();
  player.play(sound);
}

class StarButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //backgroundColor: Colors.yellow[300],
        appBar: AppBar(
          title: Text(
            "Star Buttons",
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Prequels'),
              Tab(text: 'Classicos'),
              Tab(text: 'Cringes')
            ],
          ),
        ),
        drawer: drawerGeral(context),
        body: TabBarView(
          children: [
            BuildGrid(saga: Sagas.prequel),
            BuildGrid(saga: Sagas.classic),
            BuildGrid(saga: Sagas.sequel),
          ],
        ),
      ),
    );
  }
}
