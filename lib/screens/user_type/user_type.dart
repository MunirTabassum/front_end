import 'package:flutter/material.dart';
import '../../widgets/user_type_widgets.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
              title: const Text(
                'OBL System',
                style: TextStyle(fontFamily: 'Dongle', fontSize: 38),
              ),
            ),
            body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(color: Colors.purple
                    // image: DecorationImage(
                    //     image: AssetImage('assets/ucimage.jpg'),
                    //     fit: BoxFit.cover),
                    ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Column(children: [
                    userTypePageText(
                      txt: 'Please select desired user type',
                      txtClr: Colors.white,
                      fontSize: 40,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Container(
                      height: 70,
                      width: 420,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TabBar(
                          indicator: const BoxDecoration(
                            color: Color(0xFF175353),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          tabs: [
                            userTypeRegisterTab(
                                title: 'Admin', icn: Icons.home),
                            userTypeRegisterTab(
                                title: 'Faculty', icn: Icons.home),
                          ]),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 35.0),
                        child: TabBarView(children: [
                          AdminLoginPage(),
                          FacultyLoginPage(),
                        ]),
                      ),
                    ),
                  ]),
                ))));
  }
}
