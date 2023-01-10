import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Yashwant/effects.dart';
import 'dart:html' as html;

import 'package:Yashwant/portfolioColor.dart';

class ResumePage extends StatelessWidget {
  final double? titleSize;
  final double? headingSize;
  final double? subHeadingSize;
  final double? paddingSize;
  final double? topPaddingSize;
  final bool? layoutswitch;

  ResumePage(
      {Key? key,
      this.headingSize,
      this.layoutswitch,
      this.subHeadingSize,
      this.titleSize,
      this.topPaddingSize,
      this.paddingSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(
        top: topPaddingSize!,
        left: paddingSize!,
        right: paddingSize!,
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ASSISTANT SYSTEM ENGINEER",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "Tata Consultancy Services",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "2022-Present | Bengaluru, Karnataka, INDIA",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "EDUCATION",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize!,
                  fontFamily: "Lato-Thin",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "B.TECH IN computer science",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "shri Shanakaracharya group of instittutions",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "2018-2022 | Bhilai, C.G., INDIA",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "Aggregate percentage: 72%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "class (XII)(cbse)",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "academic world school",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "May 2018 | Bemetara, C.G., INDIA",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "Aggregate percentage: 68%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "SKILLS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize!,
                  fontFamily: "Lato-Thin",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "technical skills",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Python - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Flutter - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Figma UX/UI Design - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Dart - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• .net - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• MySQL - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• HTML5 - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• JavaScript - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• jQuery - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• CSS - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• NoSQL - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Arduino - Beginner",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• WordPress - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Familiar :-",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Text(
                "• CSS • PyQT • Django • Bootstrap • Flash • Adobe Illustrator      • SEO • Adobe After Effects • Adobe Premiere Pro • Artificial Intelligence • Firebase",
                style: TextStyle(
                    fontFamily: "CrimsonPro",
                    color: Colors.white,
                    fontSize: subHeadingSize!),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "soft skills",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "• Self Study",
                      style: TextStyle(
                          fontFamily: "CrimsonPro",
                          color: Colors.white,
                          fontSize: subHeadingSize!),
                    ),
                    Text(
                      "• Problem Solving",
                      style: TextStyle(
                          fontFamily: "CrimsonPro",
                          color: Colors.white,
                          fontSize: subHeadingSize!),
                    ),
                  ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "FUN FACTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize!,
                  fontFamily: "Lato-Thin",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Interests",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• UX/UI Design",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Character Design",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Technology",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Animation",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "HOBBIES",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• Gaming",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Sketch Making",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "languages",
                style: TextStyle(
                    color: PortfolioColor.buttonColor,
                    fontSize: headingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• English - Intermediate",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Hindi - Advanced",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                  Text(
                    "• Japanese - Learning",
                    style: TextStyle(
                        fontFamily: "CrimsonPro",
                        color: Colors.white,
                        fontSize: subHeadingSize!),
                  ),
                ],
              ),
            ],
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "EXPERIENCE/PROJECTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize!,
                  fontFamily: "Lato-Thin",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "MEMESHARE APP ",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | Personal Project",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/MemeShare",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-Github",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://drive.google.com/file/d/1RD97YMViuwR9RCcm2_UNSRTvpxF5PTm4/view",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -APK Link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.youtube.com/watch?v=Z3RTO-juN4I&ab_channel=YashwantSahu",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -Video link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                ],
              ), // starting column
              Text(
                "May 2022 - Jun 2022",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• Build the Social Network App for Meme Post",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Using Flutter, Dart and Firebase",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Activity App ",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | Personal Project",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/activities",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-Github",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/Apps", "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -APK Link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.youtube.com/watch?v=V5xa4Djemfg&ab_channel=YashwantSahu",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -Video link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                ],
              ), // starting column
              Text(
                "Aug 2021",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "• Build an Activity App from Scratch",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Using Flutter, Dart and Firebase",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "E-dustbin ",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | loT Challenge 2019",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/Certificates",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-Certificate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window
                          .open("https://youtu.be/fCKZEOzD9b8", "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -Video link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                ],
              ), // starting column
              Text(
                "Feb 2019",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "• Selected in i3indya loT Challenge 2019 among Chhattisgarh State",
                        maxFontSize: subHeadingSize!,
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Build a Water and Waste Tracking system using a Microprocessor",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "tech website ",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | tech news website",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),
              // starting column
              Text(
                "April 2020",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "• Build an SEO Friendly Tech Website from Scratch by using WordPress Platform",
                        maxFontSize: subHeadingSize!,
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Implemented several Plugin and themes",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Migrate Website from one Host to another Host using FileZillaFTP Software",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Vocational Trainging ",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | bhilai steeel plant, Bhilai",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),

              InkWell(
                onTap: () {
                  html.window.open(
                      "https://github.com/yashwant9753/Certificates", "_blank");
                },
                child: OnHoverButton(builder: ((isHover) {
                  final color = isHover ? Colors.blue : Colors.black;
                  return Text(
                    "-Certificate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  );
                })),
              ),

              // starting column
              Text(
                "Jan, 2021 - Feb, 2021",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),

              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "• Build a Bhilai Steel Plant Website using Joomla Platform.",
                        maxFontSize: subHeadingSize!,
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                      Text(
                        "• Implemented several plugin Modules and themes.",
                        style: TextStyle(
                            fontFamily: "CrimsonPro",
                            color: Colors.white,
                            fontSize: subHeadingSize!),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "COURSES/TRAINING",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize!,
                  fontFamily: "Lato-Thin",
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Programming with Python",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | internshala training",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),

              InkWell(
                onTap: () {
                  html.window.open(
                      "https://github.com/yashwant9753/Certificates", "_blank");
                },
                child: OnHoverButton(builder: ((isHover) {
                  final color = isHover ? Colors.blue : Colors.black;
                  return Text(
                    "-Certificate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  );
                })),
              ),

              // starting column
              Text(
                "Jun, 2020 - July, 2020 | Online",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              AutoSizeText(
                """DISCOVER • Basic of Programming in Python • Principle of OOP 
                        • Connecting to SQLite Database • Developing a GUI with PyQT 
                        • Application of Python in Various Disciplines Modules. """,
                maxFontSize: subHeadingSize!,
                style: TextStyle(
                    fontFamily: "CrimsonPro",
                    color: Colors.white,
                    fontSize: subHeadingSize!),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "figma UX UI design Essentials",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | udemy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-ecommerce",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-ratemyeducation",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/Certificates",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -Certificate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                ],
              ),

              // starting column
              Text(
                "29 Aug, 2022 | Online",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              AutoSizeText(
                """DISCOVER • How to use Figma for Essential UX Design UI Design 
                          • Work with a UX Personas
                          • Build a UX Project from Beginning to end. """,
                maxFontSize: subHeadingSize!,
                style: TextStyle(
                    fontFamily: "CrimsonPro",
                    color: Colors.white,
                    fontSize: subHeadingSize!),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Complete web Design course",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | udemy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),

              InkWell(
                onTap: () {
                  html.window.open(
                      "https://github.com/yashwant9753/Certificates", "_blank");
                },
                child: OnHoverButton(builder: ((isHover) {
                  final color = isHover ? Colors.blue : Colors.black;
                  return Text(
                    " -Certificate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  );
                })),
              ),

              // starting column
              Text(
                "April 2022 | Online",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              AutoSizeText(
                """DISCOVER • Basic fundamentals of how to build web sites using HTML CSS, 
                           Javascript and jQuery""",
                maxFontSize: subHeadingSize!,
                style: TextStyle(
                    fontFamily: "CrimsonPro",
                    color: Colors.white,
                    fontSize: subHeadingSize!),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "figma UX UI design Essentials",
                    style: TextStyle(
                        color: PortfolioColor.buttonColor,
                        fontSize: headingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                  Text(
                    " | udemy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: subHeadingSize!,
                        fontFamily: "Bebas-Neue"),
                  ),
                ],
              ),

              Row(
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.figma.com/file/kFKgPDe30jfdQxAil8YMsT/Senpai-Laptops",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-ecommerce",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://www.figma.com/file/kINA6z7IzeajI65iLYMCNI/RateMyEducation?node-id=0%3A1",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        "-Google Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          "https://github.com/yashwant9753/Certificates",
                          "_blank");
                    },
                    child: OnHoverButton(builder: ((isHover) {
                      final color = isHover ? Colors.blue : Colors.black;
                      return Text(
                        " -Certificate",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: subHeadingSize!,
                            fontFamily: "Bebas-Neue"),
                      );
                    })),
                  ),
                ],
              ),

              // starting column
              Text(
                "Oct 2020 - Nov 2020 | Online",
                style: TextStyle(
                    color: PortfolioColor.greyColor,
                    fontSize: subHeadingSize!,
                    fontFamily: "Bebas-Neue"),
              ),
              AutoSizeText(
                """DISCOVER • Cloud Learning • Data Science and Machine Learning""",
                maxFontSize: subHeadingSize!,
                style: TextStyle(
                    fontFamily: "CrimsonPro",
                    color: Colors.white,
                    fontSize: subHeadingSize!),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
