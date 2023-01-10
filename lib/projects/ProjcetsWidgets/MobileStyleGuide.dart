import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:Yashwant/portfolioColor.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/design.dart';
import 'package:Yashwant/projects/ProjcetsWidgets/styleGuide.dart';

class MobileProjectStyleGuide extends StatelessWidget {
  final double? paddingSize;
  final String? title;
  final double? titleSize;
  final double? iconsSize;

  final double? spaceBetween;

  final String? info;
  final double? infoSize;

  final double? circleSize;

  final double? subTitleSize;

  MobileProjectStyleGuide({
    Key? key,
    this.iconsSize,
    this.circleSize,
    this.paddingSize,
    this.infoSize,
    this.info,
    this.title,
    this.titleSize,
    this.subTitleSize,
    this.spaceBetween,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: PortfolioColor.ligthGreyColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "COLOR Palette",
                      style: TextStyle(
                          fontSize: subTitleSize, fontFamily: "CrimsonPro"),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Blue",
                                colorCode: "#1363DF",
                                circleColor: Color(0xFF1363DF),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Light Grey",
                                colorCode: "#D9D9D9",
                                circleColor: Color(0xFFD9D9D9),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Light Blue",
                                colorCode: "#47B5FF",
                                circleColor: Color(0xFF47B5FF),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: spaceBetween,
                          ),
                          Row(
                            children: [
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Black",
                                colorCode: "#000000",
                                circleColor: Color(0xFF000000),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Grey",
                                colorCode: "#C2C2C2",
                                circleColor: Color(0xFFC2C2C2),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "Very Light Blue",
                                colorCode: "#DFF1F9",
                                circleColor: Color(0xFFDFF1F9),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(
                                left: 60, right: 60, top: spaceBetween!),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF2B9CDB),
                                  Color(0xFF3B8AB9),
                                  Color(0xFF4D7794),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                          SizedBox(
                            height: spaceBetween,
                          ),
                          Row(
                            children: [
                              CustomCircle(
                                circleSize: circleSize,
                                color: "",
                                colorCode: "#2B9CDB",
                                circleColor: Color(0xFF2B9CDB),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "",
                                colorCode: "#3B8AB9",
                                circleColor: Color(0xFF3B8AB9),
                              ),
                              CustomCircle(
                                circleSize: circleSize,
                                color: "",
                                colorCode: "#4D7794",
                                circleColor: Color(0xFF4D7794),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ICONS",
                      style: TextStyle(
                          fontSize: subTitleSize, fontFamily: "CrimsonPro"),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.menu,
                            size: iconsSize,
                          ),
                          Icon(
                            Icons.search,
                            size: iconsSize,
                          ),
                          Icon(
                            Icons.chevron_left,
                            size: iconsSize,
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: iconsSize,
                          ),
                          Icon(
                            Icons.border_color,
                            size: iconsSize,
                          ),
                          Icon(
                            Icons.visibility_off,
                            size: iconsSize,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "TYPEFACE",
                      style: TextStyle(
                          fontSize: subTitleSize, fontFamily: "CrimsonPro"),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 90, right: 90, top: 50, bottom: 50),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Crimson Pro-Italic",
                            style: TextStyle(
                              fontFamily: "CrimsonPro-Italic",
                              fontSize: 34,
                              color: Color(0xFF47B5FF),
                            ),
                          ),
                          Text(
                            "Dosis",
                            style: TextStyle(
                                fontFamily: "Dosis",
                                fontSize: 34,
                                color: Colors.black),
                          ),
                          Text(
                            "Crimson Pro",
                            style: TextStyle(
                              fontFamily: "CrimsonPro",
                              fontSize: 34,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Roboto",
                            style: TextStyle(
                              fontFamily: "CrimsonPro-Italic",
                              fontSize: 34,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
