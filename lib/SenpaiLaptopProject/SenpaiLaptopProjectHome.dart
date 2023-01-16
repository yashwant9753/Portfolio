import 'package:flutter/material.dart';
import 'package:Yashwant/header.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/MobileStyleGuide.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/design.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/designProcess.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/header.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/immersion.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/overview.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/prototype.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/research.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/styleGuide.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/userFlow.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/wireFrame.dart';
import 'package:velocity_x/velocity_x.dart';

class SenpaiDesktopProjectScreen extends StatelessWidget {
  const SenpaiDesktopProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        DesktopHeaderScreen(
          isHome: false,
        ),
        ProjectDesktopHeader(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
        ),
        SizedBox(
          height: 28,
        ),
        SenpaiOverView(
          titleSize: 62,
          title: "Overview",
          infoSize: 28,
          leftSide: 80,
          spaceBetween: 40,
          info:
              """Senpai Laptop is an E-commerce App that allows people to buy Laptops over the internet rather than at a brick-and-mortar location. Through this website, a business can process orders, accept payments, manage shipping and logistics, and provide customer service.\n
It’s tough to imagine daily life without e-commerce. We order food, clothes, and furniture; we register for classes and other online services; we download books, music, and movies; and so much more. E-commerce has taken root and is here to stay.""",
        ),
        SizedBox(
          height: 28,
        ),
        SenpaiDesignProcess(
          titleSize: 62,
          title: "Design Process",
          leftSide: 80,
          paddingSize: 15,
          designTitleSize: 34,
          spaceBetween: 40,
          infoSize: 28,
          info:
              """This the personal project which has to be completed within 15 day with 9 unique screen design. I immediately created a considered timeline with goal of completing the design within 10 days, above are the steps that considered while designing this project.""",
          designProcess: [
            "IMMERSION",
            "RESEARCH",
            "WAREFRAME",
            "USABILITY TEST",
            "VISUAL STYLE",
            "DESIGN STYLE",
          ],
        ),
        SizedBox(
          height: 28,
        ),
        ProjectImmersion(
          title: "Immersion",
          titleSize: 62,
          leftSide: 80,
          paddingSize: 15,
          immersionTitleSize: 25,
          immersion: [
            "The mobile app which help people to find their perfect Laptop.",
            "Any one who looking for the perfect  Computer.",
            "User can use the app whenevery they feel like buying perfect Computer.",
            "As the app is eCommerce  shopping app which can used whenever and wherever user like.",
            "The mobile app perfect solution for buying computer online."
          ],
          infoSize: 25,
          spaceBetween: 40,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectResearch(
          paddingSize: 80,
          title: "Research",
          spaceBetween: 35,
          titleSize: 62,
          imageToggle: false,
          infoSize: 28,
          projectImage: "assets/researchimage.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. You’ll use this information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.

First, study all available project materials, whether they describe a basic business idea or provide a detailed specification that fully describes the desired functionality, mindmaps, and user roles. Once you’ve analyzed all of the information you’ve received from your client, create personas and a user-journey map.""",
        ),
        SizedBox(
          height: 28,
        ),
        ProjectWireFrame(
          paddingSize: 80,
          title: "Wareframe",
          spaceBetween: 35,
          titleSize: 62,
          infoSize: 28,
          imageToggle: false,
          projectImage: "assets/wireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this mobile app’s design, I tries to make all the layout simple and minilistic so that the user can easly navigte to tha UI and browse the computer. """,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectUserFlow(
          paddingSize: 80,
          title: "UserFlow",
          titleSize: 62,
          spaceBetween: 35,
          projectImage: "assets/userflow.png",
          imageSpaceing: 150,
          isMobile: false,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectDesign(
            paddingSize: 80,
            title: "Design",
            titleSize: 62,
            spaceBetween: 35,
            imageSpaceing: 150,
            info:
                """Next,  sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a person project, it takes time. Before wireframing, I decided to apply a 6-column grid with 16 margin on both side  to create an organized and consistent look throughout our screens.""",
            infoSize: 28,
            leftImage: "assets/Explore.png",
            rightImage: "assets/Account.png",
            designInfo: [
              "375px × 812px", //minimumn
              "6",
              "16",
              "16",
            ],
            designInfoSize: 34),
        SizedBox(
          height: 28,
        ),
        SenpaiLaptopProjectStyleGuide(
          paddingSize: 80,
          title: "Style Guide",
          titleSize: 62,
          spaceBetween: 80,
          info:
              """After  comparing all the components, colors, icons, and typefaces in the Styles page of the file helped me to  build a style guide to design the page in Minimalastic way""",
          infoSize: 28,
          circleSize: 90,
          subTitleSize: 35,
          iconsSize: 80,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectPrototype(
          paddingSize: 80,
          title: "Prototype",
          titleSize: 62,
          imageToggle: false,
          spaceBetween: 80,
          projectImage: "assets/prototype.png",
          info:
              """We continued to use FIgma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the app more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 28,
        ),
      ]).scrollVertical(),
    );
  }
}

class SenpaiTabletProjectScreen extends StatelessWidget {
  const SenpaiTabletProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: VStack([
        TabletHeader(
          isHome: true,
        ),
        SenpaiTabletHeader(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
          openLink:
              "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops?node-id=23%3A40",
        ),
        SizedBox(
          height: 15,
        ),
        SenpaiOverView(
          titleSize: 50,
          title: "Overview",
          leftSide: 12,
          infoSize: 28,
          spaceBetween: 35,
          info:
              """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming, I always try to work in a minimalistic way so things are turn simple and easy to understand.\n
Application Development, Data Science, Cloud computing, and illustration   my kin interest things w hich I love to learn.
Currently, I'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
        ),
        SizedBox(
          height: 15,
        ),
        SenpaiDesignProcess(
          titleSize: 50,
          title: "Design Process",
          leftSide: 12,
          paddingSize: 10,
          designTitleSize: 27,
          spaceBetween: 35,
          infoSize: 28,
          info:
              """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming, I always try to work in a minimalistic way so things are turn simple and easy to understand.\n
Application Development, Data Science, Cloud computing, and illustration   my kin interest things w hich I love to learn.
Currently, I'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
          designProcess: [
            "IMMERSION",
            "RESEARCH",
            "WAREFRAME",
            "USABILITY TEST",
            "VISUAL STYLE",
            "DESIGN STYLE",
          ],
        ),
        SizedBox(
          height: 15,
        ),
        ProjectImmersion(
          title: "Immersion",
          titleSize: 50,
          leftSide: 12,
          paddingSize: 10,
          immersionTitleSize: 25,
          immersion: [
            "The mobile app which help people to find their perfect Laptop.",
            "Any one who looking for the perfect  Computer.",
            "User can use the app whenevery they feel like buying perfect Computer.",
            "As the app is eCommerce  shopping app which can used whenever and wherever user like.",
            "The mobile app perfect solution for buying computer online."
          ],
          infoSize: 2,
          spaceBetween: 40,
        ),
        SizedBox(
          height: 15,
        ),
        ProjectResearch(
          paddingSize: 10,
          title: "Research",
          spaceBetween: 40,
          titleSize: 50,
          imageToggle: false,
          infoSize: 23,
          projectImage: "assets/researchimage.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. You’ll use this information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.

First, study all available project materials, whether they describe a basic business idea or provide a detailed specification that fully describes the desired functionality, mindmaps, and user roles. Once you’ve analyzed all of the information you’ve received from your client, create personas and a user-journey map.""",
        ),
        SizedBox(
          height: 15,
        ),
        ProjectWireFrame(
          paddingSize: 10,
          title: "Wareframe",
          spaceBetween: 35,
          imageToggle: false,
          titleSize: 50,
          infoSize: 23,
          projectImage: "assets/wireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this mobile app’s design, I tries to make all the layout simple and minilistic so that the user can easly navigte to tha UI and browse the computer. """,
        ),
        SizedBox(
          height: 15,
        ),
        ProjectUserFlow(
          paddingSize: 10,
          title: "UserFlow",
          titleSize: 50,
          spaceBetween: 35,
          projectImage: "assets/userflow.png",
          imageSpaceing: 100,
          isMobile: false,
        ),
        SizedBox(
          height: 15,
        ),
        ProjectDesign(
            paddingSize: 10,
            title: "Design",
            titleSize: 50,
            spaceBetween: 35,
            imageSpaceing: 150,
            info:
                """Next,  sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a person project, it takes time. Before wireframing, I decided to apply a 6-column grid with 16 margin on both side  to create an organized and consistent look throughout our screens.""",
            infoSize: 23,
            leftImage: "assets/Explore.png",
            rightImage: "assets/Account.png",
            designInfo: [
              "375px × 812px", //minimumn
              "6",
              "16",
              "16",
            ],
            designInfoSize: 28),
        SizedBox(
          height: 15,
        ),
        SenpaiLaptopProjectStyleGuide(
          paddingSize: 10,
          title: "Style Guide",
          titleSize: 50,
          spaceBetween: 35,
          info:
              """After  comparing all the components, colors, icons, and typefaces in the Styles page of the file helped me to  build a style guide to design the page in Minimalastic way""",
          infoSize: 23,
          circleSize: 90,
          subTitleSize: 35,
          iconsSize: width < 960 ? 40 : 50,
        ),
        ProjectPrototype(
          paddingSize: 10,
          title: "Prototype",
          titleSize: 50,
          imageToggle: false,
          spaceBetween: 35,
          projectImage: "assets/prototype.png",
          info:
              """We continued to use FIgma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the app more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 23,
        ),
      ]).scrollVertical(),
    );
    ;
  }
}

class SenpaiMobileProjectScreen extends StatelessWidget {
  const SenpaiMobileProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(
        isHome: true,
      ),
      body: VStack([
        MobileHeader(),
        SenpaiMobileHeader(
          projectTitle: "Senpai Laptops",
          projectSkill: "Ux Ui Design",
          projectInfo: "Laptop for every ONE",
          projectImage: "assets/Senpai-Laptop-Pics.png",
          openLink:
              "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops?node-id=23%3A40",
        ),
        SizedBox(
          height: 10,
        ),
        SenpaiOverView(
          titleSize: 34,
          title: "Overview",
          leftSide: 16,
          spaceBetween: 20,
          infoSize: 17,
          info:
              """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming, I always try to work in a minimalistic way so things are turn simple and easy to understand.\n
    Application Development, Data Science, Cloud computing, and illustration   my kin interest things w hich I love to learn.
    Currently, I'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
        ),
        SizedBox(
          height: 10,
        ),
        SenpaiDesignProcess(
          titleSize: 34,
          title: "Design Process",
          leftSide: 16,
          paddingSize: 5,
          designTitleSize: 12,
          spaceBetween: 24,
          infoSize: 17,
          info:
              """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming, I always try to work in a minimalistic way so things are turn simple and easy to understand.\n
    Application Development, Data Science, Cloud computing, and illustration   my kin interest things w hich I love to learn.
    Currently, I'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
          designProcess: [
            "IMMERSION",
            "RESEARCH",
            "WAREFRAME",
            "USABILITY TEST",
            "VISUAL STYLE",
            "DESIGN STYLE",
          ],
        ),
        ProjectImmersion(
          title: "Immersion",
          titleSize: 34,
          leftSide: 16,
          paddingSize: 5,
          immersionTitleSize: 25,
          immersion: [
            "The mobile app which help people to find their perfect Laptop.",
            "Any one who looking for the perfect  Computer.",
            "User can use the app whenevery they feel like buying perfect Computer.",
            "As the app is eCommerce  shopping app which can used whenever and wherever user like.",
            "The mobile app perfect solution for buying computer onlin e."
          ],
          infoSize: 17,
          spaceBetween: 40,
        ),
        ProjectResearch(
          paddingSize: 16,
          title: "Research",
          spaceBetween: 30,
          titleSize: 34,
          imageToggle: true,
          infoSize: 17,
          projectImage: "assets/researchimage.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. You’ll use this information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.
    
    First, study all available project materials, whether they describe a basic business idea or provide a detailed specification that fully describes the desired functionality, mindmaps, and user roles. Once you’ve analyzed all of the information you’ve received from your client, create personas and a user-journey map.""",
        ),
        ProjectWireFrame(
          paddingSize: 16,
          title: "Wareframe",
          spaceBetween: 30,
          titleSize: 34,
          imageToggle: true,
          infoSize: 17,
          projectImage: "assets/wireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this mobile app’s design, I tries to make all the layout simple and minilistic so that the user can easly navigte to tha UI and browse the computer. """,
        ),
        ProjectUserFlow(
          paddingSize: 16,
          title: "UserFlow",
          titleSize: 34,
          spaceBetween: 30,
          projectImage: "assets/userflow.png",
          imageSpaceing: 10,
          isMobile: true,
        ),
        MobileProjectDesign(
            paddingSize: 16,
            title: "Design",
            titleSize: 34,
            spaceBetween: 20,
            projectImage: "assets/Account.png",
            imageSpaceing: 150,
            info:
                """Next,  sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a person project, it takes time. Before wireframing, I decided to apply a 6-column grid with 16 margin on both side  to create an organized and consistent look throughout our screens.""",
            infoSize: 17,
            designInfo: [
              "375px × 812px", //minimumn
              "6",
              "16",
              "16",
            ],
            designInfoSize: 28),
        MobileProjectStyleGuide(
            paddingSize: 16,
            title: "Style Guide",
            titleSize: 34,
            spaceBetween: 20,
            info:
                """After  comparing all the components, colors, icons, and typefaces in the Styles page of the file helped me to  build a style guide to design the page in Minimalastic way""",
            infoSize: 17,
            circleSize: 90,
            subTitleSize: 25,
            iconsSize: 30),
        ProjectPrototype(
          paddingSize: 16,
          title: "Prototype",
          titleSize: 34,
          imageToggle: true,
          spaceBetween: 20,
          projectImage: "assets/prototype.png",
          info:
              """We continued to use FIgma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the app more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 17,
        ),
      ]).scrollVertical(),
    );
  }
}
