import 'package:Yashwant/projectBanner.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectDesktopHeader extends StatelessWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final bool? isApp;
  final String? gitHubLink;
  final String? videoLink;
  final String? appLink;

  ProjectDesktopHeader(
      {Key? key,
      this.projectTitle,
      this.gitHubLink,
      this.videoLink,
      this.appLink,
      this.isApp,
      this.projectSkill,
      this.projectInfo,
      this.projectImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 500,
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
                      projectTitle!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 91.0,
                          fontFamily: "Bebas-Neue"),
                    ),
                    Text(
                      projectSkill!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "Bebas-Neue"),
                    ),
                    Text(
                      projectInfo!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: "CrimsonPro-Italic",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    isApp!
                        ? Row(
                            children: [
                              BannerButton(
                                link: gitHubLink,
                                buttonText: "Github",
                                buttonTextSize: 20,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              BannerButton(
                                link: appLink,
                                buttonText: "APK Link",
                                buttonTextSize: 20,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              BannerButton(
                                link: videoLink,
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
                    image: AssetImage(projectImage!),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class SenpaiTabletHeader extends StatelessWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? gitHubLink;
  final String? videoLink;
  final String? appLink;
  final String? openLink;
  final bool? isApp;
  const SenpaiTabletHeader(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
      this.gitHubLink,
      this.videoLink,
      this.appLink,
      this.isApp,
      this.projectImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 500,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 12, top: 77),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      projectTitle!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 91.0,
                          fontFamily: "Bebas-Neue"),
                    ),
                    Text(
                      projectSkill!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45.0,
                          fontFamily: "Bebas-Neue"),
                    ),
                    Text(
                      projectInfo!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: "CrimsonPro-Italic",
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    isApp!
                        ? Row(
                            children: [
                              BannerButton(
                                link: gitHubLink,
                                buttonText: "Github",
                                buttonTextSize: 18,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              BannerButton(
                                link: appLink,
                                buttonText: "APK Link",
                                buttonTextSize: 18,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              BannerButton(
                                link: videoLink,
                                buttonText: "Video Link",
                                buttonTextSize: 18,
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
                    image: AssetImage(projectImage!),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class SenpaiMobileHeader extends StatelessWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;
  final String? openLink;
  final String? videoLink;
  final String? appLink;
  final String? gitHubLink;

  final bool? isApp;
  const SenpaiMobileHeader(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.gitHubLink,
      this.projectInfo,
      this.openLink,
      this.videoLink,
      this.appLink,
      this.isApp,
      this.projectImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 16, top: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/senpai.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projectTitle!,
            style: TextStyle(
                color: Colors.white, fontSize: 42.0, fontFamily: "Bebas-Neue"),
          ),
          Text(
            projectSkill!,
            style: TextStyle(
                color: Colors.white, fontSize: 28.0, fontFamily: "Bebas-Neue"),
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
    );
  }
}
