import 'package:Yashwant/projects/ProjcetsWidgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:Yashwant/header.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/MobileStyleGuide.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/design.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/designProcess.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/Projectheader.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/immersion.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/overview.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/prototype.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/research.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/styleGuide.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/userFlow.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/wireFrame.dart';
import 'package:velocity_x/velocity_x.dart';

class RateMyEduDesktopProjectScreen extends StatelessWidget {
  const RateMyEduDesktopProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VStack([
        DesktopHeaderScreen(
          isHome: false,
        ),
        ProjectDesktopHeader(
          projectTitle: "RateMyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          isApp: false,
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
              """A RateMyEducation is a website on which Ratings can be posted about Online Courses, Colleges, and Schools. These sites may use techniques to gather reviews from  Students.
This Website provides better clarity about the Courses, Colleges, and School So that the Student can choose their education carefully.
""",
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
              """This Website is first think as a startup by my self so, I decided to design this website as carefully on Figma. It takes about 15 to 20 days to totally finish the Design.""",
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
            "The Website that help the student to get there best Education System.",
            "Any one who looking for the perfect Education System.",
            "User can use the app whenevery they want to see the Review of Education System by Others.",
            "This is Review Webiste which can used whenever and wherever user like.",
            "The Website perfect solution for Reviewing and Choosing your Education System."
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
          projectImage: "assets/ratemyhome.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. This information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.
    
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
          projectImage: "assets/ratemyeduWireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this Project design, I tries to make all the layout for Mobile and Web simple and minilistic so that the user can easly navigte to the APP and browse the Website easly. """,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectUserFlow(
          paddingSize: 80,
          title: "UserFlow",
          titleSize: 62,
          spaceBetween: 35,
          projectImage: "assets/RateMyEduUserFlow2.png",
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
                """Next, sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a personal project, it takes time. After wireframing, I decided to applied 80, 16 and 16 Margin for Desktop, Tablet and Mobile to create an organized and consistent look throughout our screens.""",
            infoSize: 28,
            leftImage: "assets/ratemyhome.png",
            rightImage: "assets/RateMyEduReviewPage.png",
            designInfo: [
              "1440×2204, 834x1570, 320x568", //minimumn
              "12, 6, 6",
              "80, 16, 16",
              "20, 16, 16 ",
            ],
            designInfoSize: 34),
        SizedBox(
          height: 28,
        ),
        RateMyEduProjectStyleGuide(
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
          projectImage: "assets/RateMyEduPrototype.png",
          info:
              """Using Figma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the UI more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 28,
        ),
        SizedBox(
          height: 28,
        ),
        ProjectFooter(
          paddingSize: 80,
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
          textSize: 40,
        )
      ]).scrollVertical(),
    );
  }
}

class RateMyEduTabletProjectScreen extends StatelessWidget {
  const RateMyEduTabletProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Material(
      child: VStack([
        TabletHeader(
          isHome: true,
        ),
        SenpaiTabletHeader(
          projectTitle: "RateMyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/RateMyEdu.png",
          isApp: false,
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
              """A RateMyEducation is a website on which Ratings can be posted about Online Courses, Colleges, and Schools. These sites may use techniques to gather reviews from  Students.
This Website provides better clarity about the Courses, Colleges, and School So that the Student can choose their education carefully.
""",
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
              """This Website is first think as a startup by my self so, I decided to design this website as carefully on Figma. It takes about 15 to 20 days to totally finish the Design.""",
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
            "The Website that help the student to get there best Education System.",
            "Any one who looking for the perfect Education System.",
            "User can use the app whenevery they want to see the Review of Education System by Others.",
            "This is Review Webiste which can used whenever and wherever user like.",
            "The Website perfect solution for Reviewing and Choosing your Education System."
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
          projectImage: "assets/ratemyhome.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. This information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.
    
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
          projectImage: "assets/ratemyeduWireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this Project design, I tries to make all the layout for Mobile and Web simple and minilistic so that the user can easly navigte to the APP and browse the Website easly. """,
        ),
        SizedBox(
          height: 15,
        ),
        ProjectUserFlow(
          paddingSize: 10,
          title: "UserFlow",
          titleSize: 50,
          spaceBetween: 35,
          projectImage: "assets/RateMyEduUserFlow2.png",
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
                """Next, sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a personal project, it takes time. After wireframing, I decided to applied 80, 16 and 16 Margin for Desktop, Tablet and Mobile to create an organized and consistent look throughout our screens.""",
            infoSize: 23,
            leftImage: "assets/ratemyhome.png",
            rightImage: "assets/RateMyEduReviewPage.png",
            designInfo: [
              "1440×2204, 834x1570, 320x568", //minimumn
              "12, 6, 6",
              "80, 16, 16",
              "20, 16, 16 ",
            ],
            designInfoSize: 28),
        SizedBox(
          height: 15,
        ),
        RateMyEduProjectStyleGuide(
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
        SizedBox(
          height: 15,
        ),
        ProjectPrototype(
          paddingSize: 10,
          title: "Prototype",
          titleSize: 50,
          imageToggle: false,
          spaceBetween: 35,
          projectImage: "assets/RateMyEduPrototype.png",
          info:
              """Using Figma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the UI more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 23,
        ),
        SizedBox(
          height: 15,
        ),
        ProjectFooter(
          paddingSize: 10,
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
          textSize: 40,
        )
      ]).scrollVertical(),
    );
    ;
  }
}

class RateMyEduMobileProjectScreen extends StatelessWidget {
  const RateMyEduMobileProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavigationDrawerWidget(
        isHome: true,
      ),
      body: VStack([
        MobileHeader(),
        SenpaiMobileHeader(
          projectTitle: "RateMyEducation",
          projectSkill: "Ux Ui Design",
          projectInfo: "Choose Your Education Carefully",
          projectImage: "assets/ratemyeducationbanner.png",
          isApp: false,
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
              """A RateMyEducation is a website on which Ratings can be posted about Online Courses, Colleges, and Schools. These sites may use techniques to gather reviews from  Students.
This Website provides better clarity about the Courses, Colleges, and School So that the Student can choose their education carefully.
""",
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
              """This Website is first think as a startup by my self so, I decided to design this website as carefully on Figma. It takes about 15 to 20 days to totally finish the Design.""",
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
            "The Website that help the student to get there best Education System.",
            "Any one who looking for the perfect Education System.",
            "User can use the app whenevery they want to see the Review of Education System by Others.",
            "This is Review Webiste which can used whenever and wherever user like.",
            "The Website perfect solution for Reviewing and Choosing your Education System."
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
          projectImage: "assets/ratemyeduhome.png",
          info:
              """After the immersion stage comes research. UX design begins with a study of the target audience and their needs. This information to create products and services that are helpful to the people who belong to your audience and are easy to use. At this stage, the project requirements, analyzes users’ behaviors, and conducts a competitive analysis.
    
    First, study all available project materials, whether they describe a basic business idea or provide a detailed specification that fully describes the desired functionality, mindmaps, and user roles. Once you’ve analyzed all of the information you’ve received from your client, create personas and a user-journey map.""",
        ),
        ProjectWireFrame(
          paddingSize: 16,
          title: "Wareframe",
          spaceBetween: 30,
          titleSize: 34,
          imageToggle: true,
          infoSize: 17,
          projectImage: "assets/ratemyeduWireframe.png",
          info:
              """Wireframes define the underlying structure, as well as the information hierarchy, for this Project design, I tries to make all the layout for Mobile and Web simple and minilistic so that the user can easly navigte to the APP and browse the Website easly. """,
        ),
        ProjectUserFlow(
          paddingSize: 16,
          title: "UserFlow",
          titleSize: 34,
          spaceBetween: 30,
          projectImage: "assets/RateMyEduUserFlow2.png",
          imageSpaceing: 10,
          isMobile: true,
        ),
        MobileProjectDesign(
            paddingSize: 16,
            title: "Design",
            titleSize: 34,
            spaceBetween: 20,
            projectImage: "assets/ratemyhome.png",
            imageSpaceing: 150,
            info:
                """Next, sketched low-fidelity wireframes with pencil and paper. After that general layouts of our screens, and turned to Figma for our mid-fidelity wireframes. As this was a personal project, it takes time. After wireframing, I decided to applied 80, 16 and 16 Margin for Desktop, Tablet and Mobile to create an organized and consistent look throughout our screens.""",
            infoSize: 17,
            designInfo: [
              """1440×2204, 834x1570, 
                         320x568""", //minimumn
              "12, 6, 6",
              "80, 16, 16",
              "20, 16, 16 ",
            ],
            designInfoSize: 15),
        RateMyEduMobileProjectStyleGuide(
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
          projectImage: "assets/RateMyEduPrototype.png",
          info:
              """Using Figma to create the high-fidelity wireframes and an interactive prototype. I also used Figma’s auto-animate feature to make the UI more fun and engaging for the users. We incorporated as many interactions and animations as we could, while making sure that they made sense in the overall flow and were not distracting or disruptive to the experience.""",
          infoSize: 17,
        ),
        ProjectFooter(
          paddingSize: 16,
          openLink:
              "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
          textSize: 30,
        )
      ]).scrollVertical(),
    );
  }
}
