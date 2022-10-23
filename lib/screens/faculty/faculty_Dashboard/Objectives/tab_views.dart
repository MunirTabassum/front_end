import 'package:flutter/material.dart';
import 'package:front_end/screens/faculty/faculty_Dashboard/Objectives/view_objectives.dart';
import 'add_objectives.dart';

class tab_Views extends StatelessWidget {
  const tab_Views({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      AddObjectives(),
      ViewObjectives(),
    ]);
  }
}

class ObjectiveButton extends StatelessWidget {
  ObjectiveButton({
    required this.title,
    required this.btnTxtClr,
    required this.btnBgClr,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  String title;
  Color btnTxtClr;
  Color btnBgClr;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 300,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              primary: btnBgClr),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Dongle', color: btnTxtClr, fontSize: 30.5),
          )),
    );
  }
}
