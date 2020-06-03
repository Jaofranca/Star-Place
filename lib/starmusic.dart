import 'package:flutter/material.dart';
import 'dart:ui';

import 'functions.dart';

class StarMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Star Music',
            style: TextStyle(
              fontFamily: 'Starjedi',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        drawer: drawerGeral(context),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background/musicback.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
