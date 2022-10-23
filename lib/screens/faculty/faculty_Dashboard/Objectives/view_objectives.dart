import 'package:flutter/material.dart';
import 'package:front_end/screens/faculty/faculty_Dashboard/Objectives/tab_views.dart';

class ViewObjectives extends StatefulWidget {
  const ViewObjectives({Key? key}) : super(key: key);

  @override
  State<ViewObjectives> createState() => _ViewObjectivesState();
}

class _ViewObjectivesState extends State<ViewObjectives> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          ViewObjective(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ViewObjectiveBtn(
                  title: 'Ok',
                  btnTxtClr: Colors.white,
                  btnBgClr: Color(0xFF175353),
                  onTap: () {}),
            ],
          ),
        ]),
      ),
    );
  }
}

class ViewObjective extends StatelessWidget {
  ViewObjective({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Objective Title',
            style: TextStyle(
                fontFamily: 'Dongle',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Objective Description Objective Description Objective Description Objective Description Objective Description',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Dongle', fontSize: 20),
          ),
          Text(
            'Additional Information',
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Dongle', fontSize: 20),
          ),
          Divider(
            height: 0.5,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class ViewObjectiveBtn extends StatelessWidget {
  ViewObjectiveBtn({
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
      width: 80,
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
