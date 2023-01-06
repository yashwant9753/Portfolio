import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectResearch extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? spaceBetween;
  final double? titleSize;
  final String? info;
  // final double? screenSize;
  final bool? imageToggle;
  final double? infoSize;

  ProjectResearch(
      {Key? key,
      this.title,
      this.imageToggle,
      this.infoSize,
      // this.screenSize,
      this.spaceBetween,
      this.paddingSize,
      this.titleSize,
      this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: paddingSize!, right: paddingSize!),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontSize: titleSize,
                fontFamily: "CrimsonPro-Italic",
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: spaceBetween,
          ),
          imageToggle!
              ? AutoSizeText(
                  info!,
                  maxFontSize: 28,
                  style: TextStyle(
                      fontSize: infoSize,
                      letterSpacing: 0.5,
                      fontFamily: "CrimsonPro-Italic",
                      fontStyle: FontStyle.italic),
                )
              : Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: width < 1660 ? 600 : 900,
                      child: AutoSizeText(
                        info!,
                        maxFontSize: 28,
                        style: TextStyle(
                            fontSize: infoSize,
                            letterSpacing: 0.5,
                            fontFamily: "CrimsonPro-Italic",
                            fontStyle: FontStyle.italic),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      height: width < 1660 ? 600 : 900,
                      padding: EdgeInsets.only(
                          left: width < 1660 ? 100 : 210,
                          right: width < 1660 ? 100 : 210),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/researchimage.png"),
                                fit: BoxFit.fill)),
                      ),
                    )),
                  ],
                )
        ],
      ),
    );
  }
}
