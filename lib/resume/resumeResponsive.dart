import 'package:flutter/material.dart';
import 'package:portfolio/resume/resumeHome.dart';

class ResumeResponsiveLayout extends StatefulWidget {
  const ResumeResponsiveLayout({super.key});

  @override
  State<ResumeResponsiveLayout> createState() => _ResumeResponsiveLayoutState();
}

class _ResumeResponsiveLayoutState extends State<ResumeResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return ResumeTabletView();
        }
        if (constraints.maxWidth < mobileWidth) {
          return ResumeMobileView();
        } else {
          // return Test();
          return ResumeDesktopView();
        }
      }),
    );
  }
}
