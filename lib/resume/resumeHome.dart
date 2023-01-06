import 'package:flutter/material.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/resume/ResumePage.dart';
import 'package:portfolio/resume/mobileResumePage.dart';
import 'package:velocity_x/velocity_x.dart';

class ResumeDesktopView extends StatelessWidget {
  const ResumeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: VStack([
        DesktopHeaderScreen(
          isHome: false,
        ),
        ResumePage(
          titleSize: width < 1500 ? 40 : 55,
          headingSize: width < 1500 ? 35 : 40,
          subHeadingSize: width < 1500 ? 20 : 25,
          paddingSize: width < 1500 ? 150 : 200,
          topPaddingSize: width < 1500 ? 150 : 200,
          layoutswitch: false,
        )
      ]).scrollVertical(),
    );
  }
}

class ResumeTabletView extends StatelessWidget {
  const ResumeTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: VStack([
        TabletHeader(
          isHome: false,
        ),
        ResumePage(
            titleSize: width < 1100 ? 30 : 30,
            headingSize: width < 1100 ? 25 : 30,
            subHeadingSize: width < 1100 ? 15 : 15,
            paddingSize: width < 1100 ? 100 : 150,
            topPaddingSize: width < 1100 ? 100 : 150,
            layoutswitch: false)
      ]).scrollVertical(),
    );
  }
}

class ResumeMobileView extends StatelessWidget {
  const ResumeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(
        isHome: true,
      ),
      body: VStack([
        MobileHeader(),
        MobileResumePage(
            titleSize: 35,
            headingSize: 30,
            subHeadingSize: 20,
            paddingSize: 16,
            topPaddingSize: 20,
            layoutswitch: true)
      ]).scrollVertical(),
    );
  }
}
