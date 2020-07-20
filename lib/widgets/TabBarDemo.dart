import 'package:flutter/material.dart';
import 'Cards.dart';
import '../Intro.dart';

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Container(
            margin: EdgeInsets.only(right: 15.0, left: 30, top: 15),
            child: Column(
              children: <Widget>[
                Intro(),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TabBar(
                    labelColor: Color(0xB335B6FB),
                    unselectedLabelColor: Color(0xB3707070),
                    unselectedLabelStyle: Theme.of(context).textTheme.headline6,
                    tabs: [
                      Tab(
                        child: Text(
                          "nature",
                          // style: TextStyle(color: Color(0xB3707070)),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "insect",
                          // style: TextStyle(color: Color(0xB3707070)),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "wild",
                          // style: TextStyle(color: Color(0xB3707070)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(top: 5),
                  child: TabBarView(
                    children: [Cards(), Cards(), Cards()],
                  ),
                ))
              ],
            ),
          )),
    );
  }
}
