import 'package:flutter/material.dart';
import 'package:Yashwant/aboutMe.dart';
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
        Padding(
          padding: const EdgeInsets.only(left: 80, top: 28, bottom: 28),
          child: Text(
            "Projects",
            style: TextStyle(
                color: Colors.black, fontSize: 40.0, fontFamily: "CrimsonPro"),
          ),
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
          openLink: "",
          isApp: true,
          gitHubLink: "https://github.com/yashwant9753",
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

        // TabletTechenicalSkills(),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 28, bottom: 28),
          child: Text(
            "Projects",
            style: TextStyle(
                color: Colors.black, fontSize: 40.0, fontFamily: "CrimsonPro"),
          ),
        ),
        TabletProjectBanner(
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
        TabletProjectBanner(
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
        TabletProjectBanner(
          projectTitle: "MemeShare",
          projectSkill: "Flutter App",
          projectInfo: "Share the happiness",
          projectImage: "assets.png",
          openLink: "",
          isApp: true,
          gitHubLink: "https://github.com/yashwant9753",
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
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 20, bottom: 20),
          child: Text(
            "Projects",
            style: TextStyle(
                color: Colors.black, fontSize: 30.0, fontFamily: "CrimsonPro"),
          ),
        ),
        MobileProjectBanner(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/senpai.png",
          openLink: "/senpailaptops",
          isApp: false,
        ),
        SizedBox(
          height: 20,
        ),
        MobileProjectBanner(
          projectTitle: "RatemyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/ratemyeducationbanner.png",
          openLink: "/ratemyEducation",
          isApp: false,
        ),
        SizedBox(
          height: 20,
        ),
        MobileProjectBanner(
          projectTitle: "MemeShare",
          projectSkill: "Flutter App",
          projectInfo: "Share the happiness",
          projectImage: "assets/memesharebanner.png",
          openLink: "",
          isApp: true,
          gitHubLink: "https://github.com/yashwant9753/MemeShare",
          videoLink:
              "https://www.youtube.com/watch?v=Z3RTO-juN4I&ab_channel=YashwantSahu",
          appLink:
              "https://drive.google.com/file/d/1RD97YMViuwR9RCcm2_UNSRTvpxF5PTm4/view",
        ),
        SizedBox(
          height: 20,
        ),
      ]).scrollVertical(),
    );
  }
}
