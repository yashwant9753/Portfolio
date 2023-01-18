import 'package:Yashwant/ProjectHome/projectHome.dart';
import 'package:flutter/material.dart';
import 'package:Yashwant/SenpaiLaptopProject/SenpaiLaptopProjectHome.dart';

class ProjectResponsiveLayout extends StatefulWidget {
  const ProjectResponsiveLayout({super.key});

  @override
  State<ProjectResponsiveLayout> createState() =>
      _ProjectResponsiveLayoutState();
}

class _ProjectResponsiveLayoutState extends State<ProjectResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return TabletProjectHomeScreen();
        }
        if (constraints.maxWidth < mobileWidth) {
          return MobileProjectHomeScreen();
        } else {
          // return Test();
          return DesktopProjectHomeScreen();
        }
      }),
    );
  }
}
