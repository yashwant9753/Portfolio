import 'package:flutter/material.dart';
import 'portfolioColor.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DesktopAboutMe extends StatefulWidget {
  const DesktopAboutMe({super.key});

  @override
  State<DesktopAboutMe> createState() => _DesktopAboutMeState();
}

class _DesktopAboutMeState extends State<DesktopAboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80, top: 10),
      color: PortfolioColor.ligthGreyColor,
      height: 540,
      child: Row(
        children: [
          Expanded(
              child: Stack(children: [
            Positioned(
                //<-- SEE HERE
                left: 70,
                top: 65,
                child: Container(
                  color: PortfolioColor.buttonColor,
                  width: 120,
                  height: 20,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Who I am",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: "CrimsonPro"),
                  ),
                  Text(
                    "HELLO",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: "CrimsonPro",
                        fontStyle: FontStyle.italic),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.1, top: 20),
                    child: AutoSizeText(
                      """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming,\nI always try to work in a minimalistic way so things are turn simple and easy to understand. \nApplication Development, Data Science, Cloud computing, \nand illustration are my kin interest things w hich I love to learn.Currently, \nI'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
                      maxFontSize: 28,
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "CrimsonPro",
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
          ])),
          Expanded(
              child: Stack(children: [
            Positioned(
              right: 60,
              top: 80,
              left: 120,
              bottom: 90,
              child: Container(
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 30,
              top: 90,
              left: 130,
              bottom: 70,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/About-Me.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class TabletAboutMe extends StatefulWidget {
  const TabletAboutMe({super.key});

  @override
  State<TabletAboutMe> createState() => _TabletAboutMeState();
}

class _TabletAboutMeState extends State<TabletAboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 8),
      color: PortfolioColor.ligthGreyColor,
      height: 540,
      child: Row(
        children: [
          Expanded(
              child: Stack(children: [
            Positioned(
                //<-- SEE HERE
                left: 70,
                top: 65,
                child: Container(
                  color: PortfolioColor.buttonColor,
                  width: 120,
                  height: 20,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Who I am",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: "CrimsonPro"),
                  ),
                  Text(
                    "HELLO",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                        fontFamily: "CrimsonPro",
                        fontStyle: FontStyle.italic),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.1, top: 20),
                    child: AutoSizeText(
                      """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming,\nI always try to work in a minimalistic way so things are turn simple and easy to understand. \nApplication Development, Data Science, Cloud computing, \nand illustration are my kin interest things w hich I love to learn.Currently, \nI'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
                      maxFontSize: 30,
                      minFontSize: 20,
                      style: TextStyle(
                          fontFamily: "CrimsonPro",
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
          ])),
          Expanded(
              child: Stack(children: [
            Positioned(
              right: 10,
              top: 100,
              left: 100,
              bottom: 90,
              child: Container(
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 5,
              top: 110,
              left: 110,
              bottom: 70,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/About-Me.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class MobileAboutMe extends StatefulWidget {
  const MobileAboutMe({super.key});

  @override
  State<MobileAboutMe> createState() => _MobileAboutMeState();
}

class _MobileAboutMeState extends State<MobileAboutMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 80, right: 80, top: 10),
      color: PortfolioColor.ligthGreyColor,
      height: 288,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Who I am",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: "CrimsonPro"),
            ),
            Text(
              "HELLO",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontFamily: "CrimsonPro",
                  fontStyle: FontStyle.italic),
            ),
            Container(
              padding: EdgeInsets.only(left: 19.1),
              child: AutoSizeText(
                """I'm a simple-minded Software Engineeri! who likely loves programming and Gaming,\nI always try to work in a minimalistic way so things are turn simple and easy to understand. \nApplication Development, Data Science, Cloud computing, \nand illustration are my kin interest things w hich I love to learn.Currently, \nI'm working on sharpening my skill in Flutter, ReactJS, UX/UI Design, and DSA.""",
                maxFontSize: 28,
                maxLines: 10,
                style: TextStyle(
                    fontSize: 19,
                    fontFamily: "CrimsonPro",
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
