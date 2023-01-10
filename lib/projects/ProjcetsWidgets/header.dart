import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectDesktopHeader extends StatelessWidget {
  final String? projectTitle;
  final String? projectSkill;
  final String? projectInfo;
  final String? projectImage;

  ProjectDesktopHeader(
      {Key? key,
      this.projectTitle,
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
  final String? openLink;
  const SenpaiTabletHeader(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
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
  const SenpaiMobileHeader(
      {Key? key,
      this.projectTitle,
      this.projectSkill,
      this.projectInfo,
      this.openLink,
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
          // ReadmeButton(
          //   title: "Read More >",
          // )
        ],
      ),
    );
  }
}
