import 'package:flutter/material.dart';

import '../../../../helpers/constant.dart';
import '../Objectives/objectives.dart';

class AssignedCourses extends StatelessWidget {
  const AssignedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          const Center(
              child: Text(
            'Assigned Courses',
            style: TextStyle(
                color: Colors.amber,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dongle'),
          )),
          DataTable(
            columns: [
              DataColumn(
                  label: dataColumn(
                title: 'Course - ID',
              )),
              DataColumn(
                  label: dataColumn(
                title: 'Course - Name',
              )),
              DataColumn(
                  label: dataColumn(
                title: 'Credit - Hours',
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(dataCell(
                  title: '1',
                )),
                DataCell(courseNameDataCell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => objectiveTab()));
                  },
                  title: 'Machine Learning',
                )),
                DataCell(dataCell(
                  title: '3',
                )),
              ]),
              DataRow(cells: [
                DataCell(dataCell(
                  title: '2',
                )),
                DataCell(courseNameDataCell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => objectiveTab()));
                  },
                  title: 'Deep Learning',
                )),
                DataCell(dataCell(
                  title: '3',
                )),
              ]),
              DataRow(cells: [
                DataCell(dataCell(
                  title: '1',
                )),
                DataCell(courseNameDataCell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => objectiveTab()));
                  },
                  title: 'Data Analytics',
                )),
                DataCell(dataCell(
                  title: '3',
                )),
              ]),
            ],
          ),
        ]));
  }
}

class courseNameDataCell extends StatelessWidget {
  courseNameDataCell({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);
  String title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: dataCell(
        title: title,
      ),
    );
  }
}

class dataCell extends StatelessWidget {
  dataCell({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontFamily: 'Dongle', fontSize: 22),
    );
  }
}

class dataColumn extends StatelessWidget {
  dataColumn({
    Key? key,
    required this.title,
  }) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
            color: darkcateColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Dongle'));
  }
}
