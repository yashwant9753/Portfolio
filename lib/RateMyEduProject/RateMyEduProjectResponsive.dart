import 'package:flutter/material.dart';

import 'package:Yashwant/RateMyEduProject/RateMyEduProjectHome.dart';

class RateMyEduResponsiveLayout extends StatefulWidget {
  const RateMyEduResponsiveLayout({super.key});

  @override
  State<RateMyEduResponsiveLayout> createState() =>
      _RateMyEduResponsiveLayoutState();
}

class _RateMyEduResponsiveLayoutState extends State<RateMyEduResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return RateMyEduTabletProjectScreen();
        }
        if (constraints.maxWidth < mobileWidth) {
          return RateMyEduMobileProjectScreen();
        } else {
          // return Test();
          return RateMyEduDesktopProjectScreen();
        }
      }),
    );
  }
}
