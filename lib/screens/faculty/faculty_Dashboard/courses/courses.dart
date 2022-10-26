import 'package:flutter/material.dart';
import 'package:front_end/screens/faculty/faculty_Dashboard/courses/assigned_courses.dart';

import 'courses_widgets.dart';

class CoursesTab extends StatelessWidget {
  const CoursesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow.shade100,

      child: Padding(
        padding: const EdgeInsets.only(top: 120.0, left: 50),
        child: Column(
          children: [
            Row(
              children: [
                smesterBox(
                  title: 'Smester 01',
                  ontap: () {
                    print('smeserter 1 coures');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssignedCourses()));
                  },
                ),
                smesterBox(
                  title: 'Smester 02',
                  ontap: () {},
                ),
                smesterBox(
                  title: 'Smester 03',
                  ontap: () {},
                ),
                smesterBox(
                  title: 'Smester 04',
                  ontap: () {},
                ),
                smesterBox(
                  title: 'Smester 05',
                  ontap: () {},
                ),
              ],
            ),
            Row(
              children: [
                smesterBox(
                  title: 'Smester 06',
                  ontap: () {},
                ),
                smesterBox(
                  title: 'Smester 07',
                  ontap: () {},
                ),
                smesterBox(
                  title: 'Smester 08',
                  ontap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
