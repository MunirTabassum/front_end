import 'package:flutter/material.dart';

import '../../../../widgets/dashboardwidgets.dart';
import '../../../../widgets/user_type_widgets.dart';
import 'tab_views.dart';

class objectiveTab extends StatelessWidget {
  const objectiveTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage('assets/ucimage.jpg'),
            //     fit: BoxFit.cover),
            ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                userTypePageText(
                  txt: 'Interact  ',
                  txtClr: Colors.black,
                  fontSize: 40,
                ),
                userTypePageText(
                  txt: 'with ',
                  txtClr: Colors.purple,
                  fontSize: 40,
                ),
                userTypePageText(
                  txt: ' Objectives ',
                  txtClr: Colors.black,
                  fontSize: 40,
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              height: 50,
              width: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xFF175353),
                    border: Border.all(width: 0.5),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    dashboardRegisterTab(
                        title: 'Add Objectives', icn: Icons.home),
                    dashboardRegisterTab(
                        title: 'View Objectives', icn: Icons.home),
                  ]),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: tab_Views(),
              ),
            ),
          ]),
        ));
  }
}
