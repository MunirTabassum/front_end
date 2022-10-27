import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'screens/faculty/faculty_Dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ((context, child) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 1400,
            minWidth: 600,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(600, name: MOBILE),
              const ResponsiveBreakpoint.resize(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.resize(2460, name: "4K"),
            ],
          )),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FacultyDashboard(),
    );
  }
}
