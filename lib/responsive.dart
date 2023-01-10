import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Yashwant/home.dart';

class ResponsiveLayout extends StatefulWidget {
  const ResponsiveLayout({super.key});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return TabletHomeScreen();
        }
        if (constraints.maxWidth < mobileWidth) {
          return MobileHomeScreen();
        } else {
          // return Test();
          return DesktopHomeScreen();
        }
      }),
    );
  }
}
