import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String name;
  final String avatar;
  final String info;
  final String tag;

  DetailScreen(this.name, this.avatar, this.info, this.tag);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          Hero(
              tag: tag,
              child: Container(
                height: 480,
                width: 430,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                      image: NetworkImage(avatar),
                      fit: BoxFit.fill,
                    )),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 33, left: 17),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )),
          Expanded(
              child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 35, right: 15),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Color(0xff3A476B),
                            decoration: TextDecoration.none,
                            fontSize: 23,
                            fontFamily: "Roboto-bold"),
                      )),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 14),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(0XffE2D412),
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                color: Color(0XffE2D412),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 14),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.cloud,
                              color: Color(0X99707070),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Text(
                                "2.5",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Color(0XB3707070),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 14),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.airplanemode_active,
                              color: Color(0X99707070),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 3),
                              child: Text(
                                "2 jam",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 15,
                                  color: Color(0XB3707070),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      info,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Color(0x99707070),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto-Light'),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 340,
                    margin: EdgeInsets.only(top: 18),
                    decoration: BoxDecoration(
                        color: Color(0xff1B4084),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Container(
                            // margin: EdgeInsets.only(right: 50),
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 18,
                                        ),
                                        child: Text(
                                          "Mountain",
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Color(0x99C5CBDB),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Roboto-Light'),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 5, left: 60),
                                        child: Text(
                                          "Rs. 10,000,00",
                                          style: TextStyle(
                                              decoration: TextDecoration.none,
                                              color: Color(0xffC5CBDB),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Roboto-Bold'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 80,
                          margin: EdgeInsets.only(left: 50),
                          decoration: BoxDecoration(
                            color: Color(0xffDEF1FF),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Visit",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Color(0xff5CB3F9),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Light'),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
