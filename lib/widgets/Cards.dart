// Flutter code sample for ListTile

// Here is an example of an article list item with multiline titles and
// subtitles. It utilizes [Row]s and [Column]s, as well as [Expanded] and
// [AspectRatio] widgets to organize its layout.
//
// ![Custom list item b](https://flutter.github.io/assets-for-api-docs/assets/widgets/custom_list_item_b.png)

import 'dart:convert';
import '../DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('Data/Data.json'),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          var mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Container(
              child: CircularProgressIndicator(),
            );
          } else {
            return Scaffold(
              body: AnimationLimiter(
                child: ListView.builder(
                  itemCount: mydata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimationConfiguration.staggeredList(
                      position: index,
                      duration: const Duration(milliseconds: 875),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: GestureDetector(
                            child: Container(
                                height: 130,
                                margin: EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                  color: Color(0xffF7F7F9),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Hero(
                                        tag: mydata[index]["id"].toString(),
                                        child: Container(
                                          width: 140,
                                          height: 130,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16),
                                                bottomLeft: Radius.circular(16),
                                                bottomRight:
                                                    Radius.circular(16)),
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                  mydata[index]["avatar"]),
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                        child: Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Column(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  left: 0, top: 5),
                                              child: Text(
                                                mydata[index]["name"],
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff3A476B),
                                                    fontFamily: "Roboto"),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Container(
                                            margin: EdgeInsets.only(top: 7),
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                "Lorem Ipsum is simply dummy text of the printing Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                                                style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 12,
                                                    color: Color(0xB33A476B),
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Roboto-Light"),
                                              ),
                                            ),
                                          )),
                                        ],
                                      ),
                                    ))
                                  ],
                                )),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return DetailScreen(
                                    mydata[index]['name'],
                                    mydata[index]['avatar'],
                                    mydata[index]['info'],
                                    mydata[index]["id"].toString());
                              }));
                              // Navigator.push(
                              //     context,
                              //     PageRouteBuilder(
                              //         transitionDuration:
                              //             Duration(milliseconds: 750),
                              //         pageBuilder: (_, __, ___) => DetailScreen(
                              //             mydata[index]['name'],
                              //             mydata[index]['avatar'],
                              //             mydata[index]['info'],
                              //             mydata[index]["id"].toString())));
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
        });
    // return ListView.builder(
    //     itemCount: 4,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Container(
    //           height: 130,
    //           margin: EdgeInsets.only(top: 15),
    //           decoration: BoxDecoration(
    //             color: Color(0xffF7F7F9),
    //             borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(10),
    //                 topRight: Radius.circular(10),
    //                 bottomLeft: Radius.circular(10),
    //                 bottomRight: Radius.circular(10)),
    //           ),
    //           child: Row(
    //             children: <Widget>[
    //               Container(
    //                 width: 140,
    //                 height: 130,
    //                 decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(16),
    //                       topRight: Radius.circular(16),
    //                       bottomLeft: Radius.circular(16),
    //                       bottomRight: Radius.circular(16)),
    //                   image: DecorationImage(
    //                     fit: BoxFit.fill,
    //                     image:
    //                         NetworkImage("https://picsum.photos/250?image=9"),
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                   child: Container(
    //                 margin: EdgeInsets.only(left: 8),
    //                 child: Column(
    //                   children: <Widget>[
    //                     Container(
    //                       margin: EdgeInsets.only(right: 130, top: 5),
    //                       child: Text(
    //                         "Mountain",
    //                         style: TextStyle(
    //                             decoration: TextDecoration.none,
    //                             fontSize: 15,
    //                             fontWeight: FontWeight.bold,
    //                             color: Color(0xff3A476B),
    //                             fontFamily: "Roboto"),
    //                       ),
    //                     ),
    //                     Expanded(
    //                         child: Container(
    //                       margin: EdgeInsets.only(top: 7),
    //                       child: Align(
    //                         alignment: Alignment.topRight,
    //                         child: Text(
    //                           "Lorem Ipsum is simply dummy text of the printing Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    //                           style: TextStyle(
    //                               decoration: TextDecoration.none,
    //                               fontSize: 12,
    //                               color: Color(0xB33A476B),
    //                               fontWeight: FontWeight.w500,
    //                               fontFamily: "Roboto-Light"),
    //                         ),
    //                       ),
    //                     )),
    //                   ],
    //                 ),
    //               ))
    //             ],
    //           ));
    //     });
  }
}
