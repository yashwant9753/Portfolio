import 'package:flutter/material.dart';
import 'package:Yashwant/portfolioColor.dart';

class ProjectUserFlow extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? titleSize;
  final String? projectImage;
  final double? spaceBetween;
  final double? imageSpaceing;
  final bool? isMobile;
  ProjectUserFlow(
      {Key? key,
      this.paddingSize,
      this.isMobile,
      this.title,
      this.titleSize,
      this.projectImage,
      this.spaceBetween,
      this.imageSpaceing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: paddingSize!, right: paddingSize!),
      child: Column(
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
          Container(
            height: width < 1346
                ? isMobile!
                    ? 600
                    : 900
                : 1400,
            color: PortfolioColor.lightgreyColor,
            child: Container(
              padding: isMobile!
                  ? EdgeInsets.all(imageSpaceing!)
                  : EdgeInsets.fromLTRB(
                      imageSpaceing! + width < 1600 ? 50 : 150,
                      imageSpaceing! - 100,
                      imageSpaceing! + width < 1600 ? 50 : 150,
                      imageSpaceing! - 100),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(projectImage!), fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
