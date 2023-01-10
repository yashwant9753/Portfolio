import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Yashwant/portfolioColor.dart';

class ProjectImmersion extends StatelessWidget {
  final String? title;
  final double? titleSize;
  final double? leftSide;
  final double? paddingSize;

  final double? immersionTitleSize;
  final List? immersion;
  final double? infoSize;

  final double? spaceBetween;

  ProjectImmersion(
      {Key? key,
      this.title,
      this.titleSize,
      this.leftSide,
      this.immersion,
      this.paddingSize,
      this.immersionTitleSize,
      this.infoSize,
      this.spaceBetween})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftSide!, right: leftSide!),
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
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: PortfolioColor.ligthGreyColor,
              border: Border.all(color: PortfolioColor.ligthBlueColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                // immersion.forEach(
                //   (key, value) => CustomContainer(
                //     title: key,
                //     info: value,
                //   ),
                // )

                CustomContainer(
                  title: "What?",
                  info: immersion![0],
                  titleSize: immersionTitleSize,
                  infoSize: infoSize,
                ),
                SizedBox(
                  height: 20,
                ),

                CustomContainer(
                  title: "Who?",
                  info: immersion![1],
                  titleSize: immersionTitleSize,
                  infoSize: infoSize,
                ),
                CustomContainer(
                  title: "When?",
                  info: immersion![2],
                  titleSize: immersionTitleSize,
                  infoSize: infoSize,
                ),
                CustomContainer(
                  title: "Where?",
                  info: immersion![3],
                  titleSize: immersionTitleSize,
                  infoSize: infoSize,
                ),
                CustomContainer(
                  title: "Why?",
                  info: immersion![4],
                  titleSize: immersionTitleSize,
                  infoSize: infoSize,
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}

class CustomContainer extends StatelessWidget {
  final String? title;
  final String? info;
  final double? infoSize;
  final double? titleSize;
  final double? spacing;

  const CustomContainer(
      {super.key,
      this.info,
      this.title,
      this.infoSize,
      this.titleSize,
      this.spacing});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title!,
                style: TextStyle(
                  fontSize: titleSize!,
                ),
              ),
              Container(
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: PortfolioColor.ligthBlueColor,
                  border: Border.all(color: PortfolioColor.ligthBlueColor),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: AutoSizeText(
                  info!,
                  style: TextStyle(fontFamily: "Dosis", fontSize: infoSize),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
