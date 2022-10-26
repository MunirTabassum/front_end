import 'package:flutter/material.dart';
import 'package:front_end/widgets/dashboardwidgets.dart';
import '../../../widgets/user_type_widgets.dart';
import 'Objectives/objectives.dart';
import 'Objectives/tab_views.dart';
import 'courses/courses.dart';

class FacultyDashboard extends StatefulWidget {
  const FacultyDashboard({Key? key}) : super(key: key);

  @override
  State<FacultyDashboard> createState() => _FacultyDashboardState();
}

class _FacultyDashboardState extends State<FacultyDashboard> {
  final List<Widget> _screens = [
    //  Content for Objective tab
    objectiveTab(),

    //  Content for Outcome tab
    Container(
      // color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Outcomes',
        style: TextStyle(fontSize: 40, fontFamily: 'Dongle'),
      ),
    ),
    //  Content for Courses tab
    CoursesTab(),
    //  Content for Settings tab
    Container(
      // color: Colors.yellow.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Settings',
        style: TextStyle(fontSize: 40, fontFamily: 'Dongle'),
      ),
    ),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: Text(
                'WELCOME',
                style: TextStyle(
                    fontFamily: 'Dongle',
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            actions: const [
              Icon(
                Icons.notifications_none,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ),
              SizedBox(
                width: 45,
              ),
              Center(
                child: CircleAvatar(
                  radius: 20,
                  // backgroundImage: AssetImage("assets/images/man2.jpg"),
                ),
              ),
            ],
          ),
          bottomNavigationBar: MediaQuery.of(context).size.width < 640
              ? BottomNavigationBar(
                  currentIndex: _selectedIndex,
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.indigoAccent,
                  //  Call when one tab is selected
                  onTap: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  //  bottom tab items
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.feed), label: 'Feed'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: 'Favourites'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings), label: 'Settings'),
                  ],
                )
              : null,
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.white
                // image: DecorationImage(
                //     image: AssetImage('assets/ucimage.jpg'),
                //     fit: BoxFit.cover),
                ),
            child: Row(children: [
              if (MediaQuery.of(context).size.width >= 640)
                NavigationRail(
                  minWidth: 110,
                  backgroundColor: Colors.purple,
                  onDestinationSelected: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  selectedIndex: _selectedIndex,
                  destinations: const [
                    NavigationRailDestination(
                        icon: Icon(Icons.assignment, size: 25),
                        label: Text(
                          'Objectives',
                          style: TextStyle(fontFamily: 'Dongle'),
                        )),
                    NavigationRailDestination(
                        icon: Icon(Icons.equalizer, size: 25),
                        label: Text(
                          'Outcomes',
                          style: TextStyle(fontFamily: 'Dongle'),
                        )),
                    NavigationRailDestination(
                        icon: Icon(Icons.import_contacts, size: 25),
                        label: Text(
                          'Courses',
                          style: TextStyle(fontFamily: 'Dongle'),
                        )),
                    NavigationRailDestination(
                        icon: Icon(Icons.settings, size: 25),
                        label: Text(
                          'Settings',
                          style: TextStyle(fontFamily: 'Dongle'),
                        )),
                  ],
                  labelType: NavigationRailLabelType.all,
                  leading: Column(children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 80,
                      height: 86,
                      color: Colors.purple,
                      child: Column(
                        children: const [
                          Text(
                            'OBL \n System',
                            style: TextStyle(
                                fontFamily: 'Dongle',
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ]),
                  selectedIconTheme: IconThemeData(color: Colors.white),
                  selectedLabelTextStyle: const TextStyle(color: Colors.white),
                ),
              Expanded(child: _screens[_selectedIndex])
            ]),
          )),
    );
  }
}
