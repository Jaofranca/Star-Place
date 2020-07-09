import 'package:flutter/material.dart';
import 'package:Starplace/Components/functions.dart';

class StarMusic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Star Music',
        ),
        centerTitle: true,
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
    );
  }
}
