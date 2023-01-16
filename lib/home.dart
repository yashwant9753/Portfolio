import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Yashwant/aboutMe.dart';
import 'package:Yashwant/colors.dart';
import 'package:Yashwant/header.dart';
import 'package:Yashwant/heroContent.dart';
import 'package:Yashwant/projectBanner.dart';
import 'package:Yashwant/techincalSkills.dart';
import 'package:velocity_x/velocity_x.dart';

class DesktopHomeScreen extends StatelessWidget {
  const DesktopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        DesktopHeaderScreen(
          isHome: true,
        ),
        DesktopHeroContent(),
        DesktopAboutMe(),
        SizedBox(
          height: 28,
        ),
        DesktopTechnicalSkills(),
        SizedBox(
          height: 28,
        ),
        SizedBox(
          height: 28,
        ),
        DesktopProjectBanner(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
          openLink: "/senpailaptops",
          isApp: false,
        ),
        SizedBox(
          height: 28,
        ),
        DesktopProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink: "/ratemyEducation",
          isApp: false,
        ),
        SizedBox(
          height: 28,
        ),
        DesktopProjectBanner(
          projectTitle: "MemeShare",
          projectSkill: "Flutter App",
          projectInfo: "Share the happiness",
          projectImage: "assets/MemeShare.png",
          isApp: true,
          gitHubLink: "https://github.com/yashwant9753/MemeShare",
          videoLink:
              "https://www.youtube.com/watch?v=Z3RTO-juN4I&ab_channel=YashwantSahu",
          appLink:
              "https://drive.google.com/file/d/1RD97YMViuwR9RCcm2_UNSRTvpxF5PTm4/view",
        ),
        SizedBox(
          height: 28,
        ),
      ]).scrollVertical(),
    );
  }
}

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        TabletHeader(
          isHome: false,
        ),
        TabletHeroContent(),
        TabletAboutMe(),
        SizedBox(
          height: 35,
        ),
        TabletTechnicalSkills(),
        SizedBox(
          height: 35,
        ),
        // TabletTechenicalSkills(),
        SizedBox(
          height: 35,
        ),
        TabletProjectBanner(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
          openLink: "/senpailaptops",
        ),
        SizedBox(
          height: 28,
        ),
        TabletProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink: "/ratemyEducation",
        ),
        SizedBox(
          height: 28,
        ),
        TabletProjectBanner(
          projectTitle: "MemeShare",
          projectSkill: "Flutter App",
          projectInfo: "Share the happiness",
          projectImage: "assets/MemeShare.png",
        ),
        SizedBox(
          height: 28,
        ),
      ]).scrollVertical(),
    );
    ;
  }
}

class MobileHomeScreen extends StatelessWidget {
  const MobileHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(
        isHome: false,
      ),
      body: VStack([
        MobileHeader(),
        MobileHeroContent(),
        MobileAboutMe(),
        SizedBox(
          height: 20,
        ),
        MobileTechnicalSkills(),
        SizedBox(
          height: 28,
        ),
        MobileProjectBanner(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
          openLink: "/senpailaptops",
        ),
        SizedBox(
          height: 28,
        ),
        MobileProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink: "/ratemyEducation",
        ),
        SizedBox(
          height: 28,
        ),
        MobileProjectBanner(
          projectTitle: "MemeShare",
          projectSkill: "Flutter App",
          projectInfo: "Share the happiness",
          projectImage: "assets/MemeShare.png",
        ),
        SizedBox(
          height: 28,
        ),
      ]).scrollVertical(),
    );
  }
}
