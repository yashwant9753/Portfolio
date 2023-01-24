import 'package:Yashwant/portfolioColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:html' as html;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:Yashwant/SenpaiLaptopProject/SenpaiLaptopProjectResponsive.dart';

class DesktopProjectBanner extends StatefulWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? openLink;
  final bool? isApp;
  final String? gitHubLink;
  final String? videoLink;
  final String? appLink;
  DesktopProjectBanner(
      {Key? key,
      this.projectTitle,
      this.appLink,
      this.gitHubLink,
      this.videoLink,
      this.isApp,
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
    return Column(
      children: [
        AnimatedContainer(
          margin: EdgeInsets.only(
              left: (isHover) ? 60 : 80, right: (isHover) ? 60 : 80),
          duration: Duration(milliseconds: 900),
          curve: Curves.fastOutSlowIn,
          height: (isHover) ? 500 : 428,
          child: InkWell(
            onTap: () {
              // html.window.open(widget.openLink!, "_blank");
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const SenpaiResponsiveLayout(),
              //   ),
              // );

              Navigator.pushNamed(context, widget.openLink!);
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
                            widget.isApp!
                                ? Row(
                                    children: [
                                      BannerButton(
                                        link: widget.gitHubLink,
                                        buttonText: "Github",
                                        buttonTextSize: 20,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      BannerButton(
                                        link: widget.appLink,
                                        buttonText: "APK Link",
                                        buttonTextSize: 20,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      BannerButton(
                                        link: widget.videoLink,
                                        buttonText: "Video Link",
                                        buttonTextSize: 20,
                                      ),
                                    ],
                                  )
                                : Text(""),
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
      ],
    );
  }
}

class BannerButton extends StatelessWidget {
  final String? link;
  final String? buttonText;
  final double? buttonTextSize;
  BannerButton({Key? key, this.link, this.buttonText, this.buttonTextSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(link!, "_blank");
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: PortfolioColor.buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        alignment: Alignment.center,
        child: Text(
          buttonText!,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: "Bebas-Neue",
            fontSize: buttonTextSize,
            color: Colors.black,
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
  final bool? isApp;
  final String? gitHubLink;
  final String? videoLink;
  final String? appLink;
  const TabletProjectBanner(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.appLink,
      this.gitHubLink,
      this.videoLink,
      this.isApp,
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
            Navigator.pushNamed(context, widget.openLink!);
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
                          widget.isApp!
                              ? Row(
                                  children: [
                                    BannerButton(
                                      link: widget.gitHubLink!,
                                      buttonTextSize: 18,
                                      buttonText: "Github",
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    BannerButton(
                                        link: widget.appLink!,
                                        buttonTextSize: 18,
                                        buttonText: "APK Link"),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    BannerButton(
                                        link: widget.videoLink!,
                                        buttonTextSize: 18,
                                        buttonText: "Video Link"),
                                  ],
                                )
                              : Text(""),
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
  final bool? isApp;
  final String? gitHubLink;
  final String? videoLink;
  final String? appLink;
  const MobileProjectBanner(
      {Key? key,
      this.appLink,
      this.gitHubLink,
      this.videoLink,
      this.isApp,
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
          Navigator.pushNamed(context, openLink!);
        },
        child: Container(
          height: 209,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 16, top: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(projectImage!), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              isApp!
                  ? Row(
                      children: [
                        BannerButton(
                          link: gitHubLink,
                          buttonText: "Github",
                          buttonTextSize: 12,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        BannerButton(
                          link: appLink,
                          buttonText: "APK Link",
                          buttonTextSize: 12,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        BannerButton(
                          link: videoLink,
                          buttonText: "Video Link",
                          buttonTextSize: 12,
                        ),
                      ],
                    )
                  : Text(""),

              // ReadmeButton(
              //   title: "Read More >",
              // )
            ],
          ),
        ));
  }
}
