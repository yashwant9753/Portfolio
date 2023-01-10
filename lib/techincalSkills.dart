import 'package:flutter/material.dart';

import 'portfolioColor.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:Yashwant/effects.dart';

class DesktopTechnicalSkills extends StatefulWidget {
  const DesktopTechnicalSkills({super.key});

  @override
  State<DesktopTechnicalSkills> createState() => _DesktopTechnicalSkillsState();
}

class _DesktopTechnicalSkillsState extends State<DesktopTechnicalSkills> {
  Widget skillsIcons(Logo skillLogos) {
    return Container(
      child: OnHoverButton(builder: ((isHover) {
        final color = isHover ? Colors.blue : Colors.black;
        return Container(child: skillLogos);
      })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            //<-- SEE HERE
            left: 130,
            top: 20,
            child: Container(
              color: PortfolioColor.buttonColor,
              width: 70,
              height: 20,
            )),
        Container(
            padding: EdgeInsets.only(left: 80, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Skills",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontFamily: "CrimsonPro"),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    skillsIcons(
                      Logo(
                        Logos.python,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.flutter,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.react,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.javascript,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.figma,
                        size: 70,
                      ),
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}

class TabletTechnicalSkills extends StatefulWidget {
  const TabletTechnicalSkills({super.key});

  @override
  State<TabletTechnicalSkills> createState() => _TabletTechnicalSkillsState();
}

class _TabletTechnicalSkillsState extends State<TabletTechnicalSkills> {
  Widget skillsIcons(Logo skillLogos) {
    return Container(
      child: OnHoverButton(builder: ((isHover) {
        final color = isHover ? Colors.blue : Colors.black;
        return Container(child: skillLogos);
      })),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            //<-- SEE HERE
            left: 55,
            top: 20,
            child: Container(
              color: PortfolioColor.buttonColor,
              width: 70,
              height: 20,
            )),
        Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Skills",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontFamily: "CrimsonPro"),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    skillsIcons(
                      Logo(
                        Logos.python,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.flutter,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.react,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.javascript,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    skillsIcons(
                      Logo(
                        Logos.figma,
                        size: 70,
                      ),
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}

class MobileTechnicalSkills extends StatefulWidget {
  const MobileTechnicalSkills({super.key});

  @override
  State<MobileTechnicalSkills> createState() => _MobileTechnicalSkillsState();
}

class _MobileTechnicalSkillsState extends State<MobileTechnicalSkills> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            //<-- SEE HERE
            left: 55,
            top: 20,
            child: Container(
              color: PortfolioColor.buttonColor,
              width: 50,
              height: 10,
            )),
        Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Skills",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontFamily: "CrimsonPro"),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Logo(
                      Logos.python,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Logo(
                      Logos.flutter,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Logo(
                      Logos.react,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Logo(
                      Logos.javascript,
                      size: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Logo(
                      Logos.figma,
                      size: 40,
                    ),
                  ],
                )
              ],
            ))
      ],
    );
  }
}
