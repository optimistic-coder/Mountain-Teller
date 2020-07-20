import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 60),
          child: Row(
            children: <Widget>[
              Text(
                "Hello, Akash",
                style: TextStyle(
                    fontFamily: "Robot-Light",
                    fontWeight: FontWeight.w600,
                    color: Color(0XB3707070),
                    decoration: TextDecoration.none,
                    fontSize: 18),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 190, right: 10),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://img2.thejournal.ie/inline/2470754/original/?width=428&version=2470754'),
                ),
              ))
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 275),
                child: Text(
                  "Your",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 40,
                      fontFamily: "Robot-bold",
                      color: Color(0XB30C0202),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 270),
                child: Text(
                  "Feed",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 40,
                      fontFamily: "Robot-bold",
                      color: Color(0XB30C0202),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 100),
                child: Text(
                  "Is up to, date!",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 40,
                      fontFamily: "Robot-bold",
                      color: Color(0XB30C0202),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
