import 'package:flutter/material.dart';

class FunctionCard extends StatelessWidget {
  FunctionCard({@required this.function});
  final Function function;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Container(
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFBD3E3E)),
          child: Column(
            children: <Widget>[
              Text(
                'Star buttons',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                'Your favorite star wars sounds',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
