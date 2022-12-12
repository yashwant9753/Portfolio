import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:icons_plus/icons_plus.dart';
import 'PortfolioColor.dart';
import 'dart:html' as html;

class DesktopHeroContent extends StatefulWidget {
  const DesktopHeroContent({super.key});

  @override
  State<DesktopHeroContent> createState() => _DesktopHeroContentState();
}

class _DesktopHeroContentState extends State<DesktopHeroContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 702,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 702,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/HeroImage.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        //<-- SEE HERE
        left: 100,
        top: 250,
        child: Text(
          "I AM ",
          style: TextStyle(
              color: Colors.white, fontSize: 40.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
        //<-- SEE HERE
        left: 100,
        top: 300,
        child: Text(
          "YASHWANT SAHU",
          style: TextStyle(
              color: Colors.white, fontSize: 91.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
          left: 100,
          top: 417,
          child: CustomAnimatedButtion(
            title: "A Software Engineer",
            beforeWidth: 393,
            afterWidth: 500,
            beforeHeight: 81,
            afterHeight: 100,
          )),
      Positioned(
        right: 50,
        bottom: 22,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  print("wdw");
                  html.window.open(
                      'https://www.linkedin.com/in/yashwant-sahu-b9b5021a9/',
                      "_blank");
                },
                child: Logo(Logos.linkedin)),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {
                  html.window.open('https://github.com/yashwant9753', "_blank");
                },
                child: Logo(Logos.github)),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    ]);
  }
}

class CustomAnimatedButtion extends StatefulWidget {
  final String? title;
  final double? beforeWidth;
  final double? afterWidth;
  final double? beforeHeight;
  final double? afterHeight;
  const CustomAnimatedButtion(
      {Key? key,
      this.title,
      this.afterHeight,
      this.afterWidth,
      this.beforeHeight,
      this.beforeWidth})
      : super(key: key);

  @override
  State<CustomAnimatedButtion> createState() => _CustomAnimatedButtionState();
}

class _CustomAnimatedButtionState extends State<CustomAnimatedButtion> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: (isHover) ? widget.afterWidth : widget.beforeWidth,
      height: (isHover) ? widget.afterHeight : widget.beforeHeight,
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 900),
      decoration: BoxDecoration(
        color: PortfolioColor.buttonColor,
      ),
      child: InkWell(
        onTap: () {},
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Software Engineer",
            style: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.w800,
              fontFamily: "Bebas-Neue",
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class TabletHeroContent extends StatelessWidget {
  const TabletHeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 702,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 702,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/HeroImage.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        //<-- SEE HERE
        left: 55,
        top: 250,
        child: Text(
          "I AM ",
          style: TextStyle(
              color: Colors.white, fontSize: 40.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
        //<-- SEE HERE
        left: 55,
        top: 300,
        child: Text(
          "YASHWANT SAHU",
          style: TextStyle(
              color: Colors.white, fontSize: 91.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
          left: 55,
          top: 417,
          child: CustomAnimatedButtion(
            title: "software engineer",
            beforeWidth: 393,
            afterWidth: 500,
            beforeHeight: 81,
            afterHeight: 100,
          )),
      Positioned(
        right: 50,
        bottom: 22,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  print("wdw");
                  html.window.open(
                      'https://www.linkedin.com/in/yashwant-sahu-b9b5021a9/',
                      "_blank");
                },
                child: Logo(Logos.linkedin)),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {
                  html.window.open('https://github.com/yashwant9753', "_blank");
                },
                child: Logo(Logos.github)),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    ]);
  }
}

class MobileHeroContent extends StatelessWidget {
  const MobileHeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 283,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/HeroImage.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        //<-- SEE HERE
        left: 16,
        top: 142,
        child: Text(
          "I AM ",
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
        //<-- SEE HERE
        left: 16,
        top: 175,
        child: Text(
          "YASHWANT SAHU",
          style: TextStyle(
              color: Colors.white, fontSize: 30.0, fontFamily: "Bebas-Neue"),
        ),
      ),
      Positioned(
        left: 16,
        top: 213,
        child: Container(
          alignment: Alignment.center,
          width: 187,
          height: 36,
          child: Text(
            "SOftware Engineer",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w800,
              fontFamily: "Bebas-Neue",
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            color: PortfolioColor.buttonColor,
          ),
        ),
      ),
      Positioned(
        right: 16,
        top: 235,
        child: Row(
          children: [
            InkWell(
                onTap: () {
                  print("wdw");
                  html.window.open(
                      'https://www.linkedin.com/in/yashwant-sahu-b9b5021a9/',
                      "_blank");
                },
                child: Logo(
                  Logos.linkedin,
                  size: 25,
                )),
            SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {
                  html.window.open('https://github.com/yashwant9753', "_blank");
                },
                child: Logo(
                  Logos.github,
                  size: 25,
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    ]);
  }
}
