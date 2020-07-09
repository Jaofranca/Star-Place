import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:ui';
import 'package:Starplace/Components/functions.dart';

import 'package:url_launcher/url_launcher.dart';

class Aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About me',
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      drawer: drawerGeral(context),
      backgroundColor: Colors.deepPurple[600],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/galinha.jpg'),
            ),
            Text(
              'João Victor de França',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SansPro',
                  fontSize: 20,
                  color: Colors.white70,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 150,
              height: 20,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ListTile(
                  leading:
                      Icon(Icons.mail, size: 20.0, color: Colors.teal.shade900),
                  title: Text(
                    'joaovfranca@hotmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 16.0),
                  ),
                  onTap: () {},
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: Icon(MdiIcons.github,
                        size: 20.0, color: Colors.teal.shade900),
                    title: Text(
                      'github.com/Jaofranca',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: Icon(MdiIcons.twitch,
                        size: 20.0, color: Colors.teal.shade900),
                    title: Text(
                      'twitch.tv/kingsorahs',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
