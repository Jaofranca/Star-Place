import 'package:flutter/material.dart';

import 'package:Starplace/Components/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Myhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome',
                      style: GoogleFonts.kronaOne(textStyle: ktitletextstyle),
                    ),
                    Text(
                      'to your place in the galaxy',
                      style: GoogleFonts.roboto(textStyle: ksubtitletextstyle),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  children: <Widget>[
                    HomeCard(
                      header: 'Star Buttons',
                      description: 'Your favorite star wars sounds',
                      gif: 'images/gifs/button.gif',
                      onpress: () {
                        Navigator.pushNamed(context, '/starbutton');
                      },
                    ),
                    HomeCard(
                      header: 'Star Music',
                      description: 'Listen the most remarkables musics ',
                      gif: 'images/gifs/music.gif',
                      onpress: () {
                        Navigator.pushNamed(context, '/starmusic');
                      },
                    ),
                    HomeCard(
                      header: 'Star Quiz',
                      description:
                          'Do you have a good knowledge about the series?',
                      gif: 'images/gifs/quizgif.gif',
                      onpress: () {
                        Navigator.pushNamed(context, '/starbutton');
                      },
                    ),
                    HomeCard(
                      header: 'Aboutme',
                      description: 'Just me',
                      gif: 'images/gifs/button.gif',
                      onpress: () {
                        Navigator.pushNamed(context, '/aboutme');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  HomeCard(
      {@required this.header,
      @required this.description,
      @required this.gif,
      @required this.onpress});

  final String header;
  final String description;
  final String gif;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(gif),
              fit: BoxFit.cover,
            ),
          ),
          height: 200.0,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 0, 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  header,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
