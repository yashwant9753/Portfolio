import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:html' as html;
import 'package:auto_size_text/auto_size_text.dart';

class DesktopProjectBanner extends StatefulWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? openLink;

  DesktopProjectBanner(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
      this.projectImage})
      : super(key: key);

  @override
  State<DesktopProjectBanner> createState() => _DesktopProjectBannerState();
}

class _DesktopProjectBannerState extends State<DesktopProjectBanner> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(
          left: (isHover) ? 60 : 80, right: (isHover) ? 60 : 80),
      duration: Duration(milliseconds: 900),
      curve: Curves.fastOutSlowIn,
      height: (isHover) ? 500 : 428,
      child: InkWell(
        onTap: () {
          html.window.open(widget.openLink!, "_blank");
        },
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          color: Colors.black,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(left: 73, top: 77),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.projectTitle!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 91.0,
                              fontFamily: "Bebas-Neue"),
                        ),
                        Text(
                          widget.projectSkill!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 45.0,
                              fontFamily: "Bebas-Neue"),
                        ),
                        Text(
                          widget.projectInfo!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontFamily: "CrimsonPro-Italic",
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        // ReadmeButton(
                        //   title: "Read More >",
                        // )
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.projectImage!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class TabletProjectBanner extends StatefulWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? openLink;
  const TabletProjectBanner(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
      this.projectImage})
      : super(key: key);

  @override
  State<TabletProjectBanner> createState() => _TabletProjectBannerState();
}

class _TabletProjectBannerState extends State<TabletProjectBanner> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AnimatedContainer(
        margin: EdgeInsets.only(
            left: (isHover) ? 8 : 12, right: (isHover) ? 8 : 12),
        duration: Duration(milliseconds: 1000),
        curve: Curves.fastOutSlowIn,
        height: (isHover) ? 450 : 400,
        child: InkWell(
          onTap: () {
            html.window.open(widget.openLink!, "_blank");
          },
          onHover: (val) {
            setState(() {
              isHover = val;
            });
          },
          child: Container(
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 80, left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            widget.projectTitle!,
                            maxFontSize: 47,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 200.0,
                              fontFamily: "Bebas-Neue",
                            ),
                          ),
                          AutoSizeText(
                            widget.projectSkill!,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontFamily: "Bebas-Neue"),
                          ),
                          AutoSizeText(
                            widget.projectInfo!,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontFamily: "CrimsonPro-Italic",
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.projectImage!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class MobileProjectBanner extends StatelessWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? openLink;
  const MobileProjectBanner(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
      this.projectImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(openLink!, "_blank");
      },
      child: Container(
        color: Colors.black,
        height: 300,
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(projectImage!),
                  fit: BoxFit.cover,
                ),
              ),
            )),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 50, left: 5, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          projectTitle!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 42.0,
                              fontFamily: "Bebas-Neue"),
                        ),
                        Text(
                          projectSkill!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontFamily: "Bebas-Neue"),
                        ),
                      ],
                    ),
                    Text(
                      projectInfo!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: "CrimsonPro-Italic",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
