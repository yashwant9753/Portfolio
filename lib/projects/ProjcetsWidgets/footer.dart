import 'package:Yashwant/portfolioColor.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class ProjectFooter extends StatelessWidget {
  final double? paddingSize;
  final String? openLink;
  final double? textSize;

  ProjectFooter({Key? key, this.openLink, this.paddingSize, this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(openLink!, "_blank");
      },
      child: Container(
          margin: EdgeInsets.only(
              left: paddingSize!, right: paddingSize!, bottom: paddingSize!),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: PortfolioColor.buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              "See the Prototype >>",
              style: TextStyle(
                  fontSize: textSize,
                  fontFamily: "CrimsonPro-Italic",
                  fontStyle: FontStyle.italic),
            ),
          )),
    );
  }
}
