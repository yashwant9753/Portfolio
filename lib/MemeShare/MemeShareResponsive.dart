import 'package:Yashwant/MemeShare/MemeShareAppHome.dart';
import 'package:flutter/material.dart';

class MemeShareResponsiveLayout extends StatefulWidget {
  const MemeShareResponsiveLayout({super.key});

  @override
  State<MemeShareResponsiveLayout> createState() =>
      _MemeShareResponsiveLayoutState();
}

class _MemeShareResponsiveLayoutState extends State<MemeShareResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return MemeShareTabletScreen();
        }
        if (constraints.maxWidth < mobileWidth) {
          return MemeShareMobileScreen();
        } else {
          // return Test();
          return MemeShareDesktopScreen();
        }
      }),
    );
  }
}
