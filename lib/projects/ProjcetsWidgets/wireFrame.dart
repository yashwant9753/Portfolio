import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectWireFrame extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? spaceBetween;
  final double? titleSize;
  final String? info;
  final bool? imageToggle;
  // final double? screenSize;

  final double? infoSize;
  final String? projectImage;

  ProjectWireFrame(
      {Key? key,
      this.title,
      this.infoSize,
      this.projectImage,
      this.imageToggle,
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
          Column(
            children: [
              Container(
                height: imageToggle!
                    ? 300
                    : width < 1346
                        ? 600
                        : 779,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(projectImage!), fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: AutoSizeText(
                  info!,
                  maxFontSize: 28,
                  style: TextStyle(
                      fontSize: infoSize,
                      letterSpacing: 0.5,
                      fontFamily: "CrimsonPro-Italic",
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
