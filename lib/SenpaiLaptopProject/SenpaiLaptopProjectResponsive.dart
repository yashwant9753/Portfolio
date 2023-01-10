import 'package:flutter/material.dart';
import 'package:Yashwant/SenpaiLaptopProject/SenpaiLaptopProjectHome.dart';

class SenpaiResponsiveLayout extends StatefulWidget {
  const SenpaiResponsiveLayout({super.key});

  @override
  State<SenpaiResponsiveLayout> createState() => _SenpaiResponsiveLayoutState();
}

class _SenpaiResponsiveLayoutState extends State<SenpaiResponsiveLayout> {
  int mobileWidth = 668;
  int tableWidth = 1346;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < tableWidth &&
            constraints.maxWidth > mobileWidth) {
          return SenpaiTabletProjectScreen();
        }
        if (constraints.maxWidth < mobileWidth) {
          return SenpaiMobileProjectScreen();
        } else {
          // return Test();
          return SenpaiDesktopProjectScreen();
        }
      }),
    );
  }
}
