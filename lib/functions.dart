import 'main.dart';
import 'Aboutme.dart';
import 'starmusic.dart';
import 'starbuttons.dart';
import 'package:flutter/material.dart';

drawerGeral(contexto) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('images/background/logostar.jpg'),
            ),
          ),
          child: null,
        ),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
                contexto,
                MaterialPageRoute(
                  builder: (context) => Myhome(),
                ));
          },
        ),
        ListTile(
          title: Text(
            'Star buttons',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
              contexto,
              MaterialPageRoute(
                builder: (context) => StarButtons(),
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'Star music',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
              contexto,
              MaterialPageRoute(
                builder: (context) => StarMusic(),
              ),
            );
          },
        ),
        ListTile(
          title: Text(
            'About me',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.push(
              contexto,
              MaterialPageRoute(
                builder: (context) => Aboutme(),
              ),
            );
          },
        )
      ],
    ),
  );
}
