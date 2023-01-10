import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:Yashwant/portfolioColor.dart';

class ProjectDesign extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? titleSize;

  final double? spaceBetween;
  final double? imageSpaceing;

  final String? info;
  final double? infoSize;
  final String? leftImage;
  final String? rightImage;
  final List? designInfo;
  final double? designInfoSize;

  ProjectDesign(
      {Key? key,
      this.paddingSize,
      this.designInfo,
      this.designInfoSize,
      this.leftImage,
      this.rightImage,
      this.infoSize,
      this.info,
      this.title,
      this.titleSize,
      this.spaceBetween,
      this.imageSpaceing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
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
            height: 1314,
            decoration: BoxDecoration(
              color: PortfolioColor.ligthGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width < 1660
                                    ? width < 1470
                                        ? width < 1346
                                            ? 40
                                            : 70
                                        : 100
                                    : 190,
                                right: width < 1660
                                    ? width < 1470
                                        ? width < 1346
                                            ? 40
                                            : 70
                                        : 100
                                    : 190),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(leftImage!),
                                        fit: BoxFit.fill))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Grid Information",
                                    style: TextStyle(
                                        fontSize: designInfoSize,
                                        fontFamily: "CrimsonPro-Italic"),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  CustomDesignInfo(
                                      designKey: "iPhone 13 Mini : ",
                                      designInfo: designInfo![0],
                                      designInfoSize: designInfoSize),
                                  CustomDesignInfo(
                                      designKey: "Column : ",
                                      designInfo: designInfo![1],
                                      designInfoSize: designInfoSize),
                                  CustomDesignInfo(
                                      designKey: "Margin : ",
                                      designInfo: designInfo![2],
                                      designInfoSize: designInfoSize),
                                  CustomDesignInfo(
                                      designKey: "Glutter : ",
                                      designInfo: designInfo![3],
                                      designInfoSize: designInfoSize),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width < 1660
                                    ? width < 1470
                                        ? width < 1346
                                            ? 40
                                            : 70
                                        : 100
                                    : 190,
                                right: width < 1660
                                    ? width < 1470
                                        ? width < 1346
                                            ? 40
                                            : 70
                                        : 100
                                    : 190),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(rightImage!),
                                        fit: BoxFit.fill))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    required this.title,
    required this.titleSize,
    required this.info,
    required this.infoSize,
  });

  final String? title;
  final double? titleSize;
  final String? info;
  final double? infoSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title!,
            style: TextStyle(
                fontSize: titleSize,
                fontFamily: "CrimsonPro-Italic",
                fontStyle: FontStyle.italic),
          ),
        ),
        Expanded(
            flex: 2,
            child: Text(
              info!,
              // maxFontSize: 28,
              style: TextStyle(
                  fontSize: infoSize!,
                  fontFamily: "CrimsonPro-Italic",
                  fontStyle: FontStyle.italic),
            ))
      ],
    );
  }
}

class CustomDesignInfo extends StatelessWidget {
  const CustomDesignInfo({
    super.key,
    required this.designInfo,
    required this.designInfoSize,
    required this.designKey,
  });

  final String? designInfo;
  final double? designInfoSize;
  final String? designKey;

  @override
  Widget build(BuildContext context) {
    return Text(
      designKey! + designInfo!,
      style:
          TextStyle(fontSize: designInfoSize, fontFamily: "CrimsonPro-Italic"),
    );
  }
}

class MobileProjectDesign extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? titleSize;
  final String? projectImage;
  final double? spaceBetween;
  final double? imageSpaceing;

  final String? info;
  final double? infoSize;

  final List? designInfo;
  final double? designInfoSize;

  MobileProjectDesign(
      {Key? key,
      this.paddingSize,
      this.designInfo,
      this.designInfoSize,
      this.infoSize,
      this.info,
      this.title,
      this.titleSize,
      this.projectImage,
      this.spaceBetween,
      this.imageSpaceing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Text(
            info!,
            // maxFontSize: 28,
            style: TextStyle(
                fontSize: infoSize!,
                fontFamily: "CrimsonPro-Italic",
                fontStyle: FontStyle.italic),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: PortfolioColor.ligthGreyColor,
              border: Border.all(color: PortfolioColor.ligthBlueColor),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Grid Information",
                      style: TextStyle(
                          fontSize: 23, fontFamily: "CrimsonPro-Italic"),
                    ),
                    Text(
                      "iPhone 13 Mini : 375px × 812px",
                      style: TextStyle(
                          fontSize: 17, fontFamily: "CrimsonPro-Italic"),
                    ),
                    Text(
                      "Column : 6",
                      style: TextStyle(
                          fontSize: 17, fontFamily: "CrimsonPro-Italic"),
                    ),
                    Text(
                      "Margin : 16",
                      style: TextStyle(
                          fontSize: 17, fontFamily: "CrimsonPro-Italic"),
                    ),
                    Text(
                      "Glutter : 16",
                      style: TextStyle(
                          fontSize: 17, fontFamily: "CrimsonPro-Italic"),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                    height: 300,
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(projectImage!),
                            fit: BoxFit.fill))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
