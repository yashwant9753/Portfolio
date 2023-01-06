import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/aboutMe.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/header.dart';
import 'package:portfolio/heroContent.dart';
import 'package:portfolio/projectBanner.dart';
import 'package:portfolio/techincalSkills.dart';
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
        ),
        SizedBox(
          height: 28,
        ),
        DesktopProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
        ),
        SizedBox(
          height: 28,
        ),
        DesktopProjectBanner(
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

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        TabletHeader(
          isHome: true,
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
          openLink:
              "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops?node-id=23%3A40",
        ),
        SizedBox(
          height: 28,
        ),
        TabletProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
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
          openLink:
              "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops?node-id=23%3A40",
        ),
        SizedBox(
          height: 28,
        ),
        MobileProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
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
