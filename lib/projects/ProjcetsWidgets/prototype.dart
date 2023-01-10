import 'package:flutter/material.dart';
import 'package:Yashwant/portfolioColor.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/design.dart';

class ProjectPrototype extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? titleSize;
  final double? iconsSize;

  final double? spaceBetween;

  final String? info;
  final double? infoSize;
  final String? projectImage;
  final bool? imageToggle;

  ProjectPrototype(
      {Key? key,
      this.iconsSize,
      this.paddingSize,
      this.infoSize,
      this.info,
      this.projectImage,
      this.title,
      this.titleSize,
      this.spaceBetween,
      this.imageToggle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(left: paddingSize!, right: paddingSize!),
      child: Column(
        children: [
          CustomWidget(
              title: title,
              titleSize: titleSize,
              info: info,
              infoSize: infoSize),
          SizedBox(
            height: spaceBetween,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                width < 1500
                    ? width < 668
                        ? 0
                        : 80
                    : 200,
                40,
                width < 1500
                    ? width < 668
                        ? 0
                        : 80
                    : 200,
                40),
            height: imageToggle!
                ? 500
                : width < 1500
                    ? 700
                    : 1000,
            decoration: BoxDecoration(
              color: PortfolioColor.ligthGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(projectImage!), fit: BoxFit.fill),
              ),
            ),
          )
        ],
      ),
    );
  }
}
