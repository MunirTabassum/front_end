import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  NavigationRailDestination textDestination(
    String text,
  ) {
    return NavigationRailDestination(
      icon: SizedBox.shrink(),
      label: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: RotatedBox(
          quarterTurns: -1,
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(children: <Widget>[
          NavigationRail(
            minWidth: 55.0,
            groupAlignment: 0.0,
            backgroundColor: Colors.blueGrey,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: NavigationRailLabelType.all,
            leading: Column(
              children: const [
                SizedBox(
                  height: 8,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/man2.jpg"),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Icon(
                    Icons.dashboard,
                    color: Color(0xffFCCFA8),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Icon(Icons.date_range),
                )
              ],
            ),
            selectedLabelTextStyle: const TextStyle(
              color: Colors.orangeAccent,
              fontSize: 14,
              letterSpacing: 1,
              decorationThickness: 2.0,
            ),
            unselectedLabelTextStyle: const TextStyle(
              fontSize: 13,
              letterSpacing: 0.8,
            ),
            destinations: [
              textDestination(
                "Trending",
              ),
              textDestination(
                "Latest",
              ),
              textDestination("Favourites"),
              textDestination(
                "All",
              ),
            ],
          ),
          // Details(_selectedIndex)
        ]),
      ),
    );
  }
}
