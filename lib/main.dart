import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:teste/functions.dart';

void main() => runApp(
      MaterialApp(
        home: Myhome(),
      ),
    );

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Star hub',
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
            image: AssetImage('images/background/homeback.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
