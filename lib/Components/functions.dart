import 'package:flutter/material.dart';

enum Pages { home, starbuttons, starmusic, aboutme }
Pages actualPage = Pages.home;
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
            Navigator.pushNamed(contexto, '/');
            actualPage = Pages.home;
          },
        ),
        ListTile(
          title: Text(
            'Star buttons',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(contexto, '/starbutton');
            actualPage = Pages.starbuttons;
          },
        ),
        ListTile(
          title: Text(
            'Star music',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(contexto, '/starmusic');
            actualPage = Pages.starmusic;
          },
        ),
        ListTile(
          title: Text(
            'About me',
            style: TextStyle(fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(contexto, '/aboutme');
            actualPage = Pages.aboutme;
          },
        )
      ],
    ),
  );
}
