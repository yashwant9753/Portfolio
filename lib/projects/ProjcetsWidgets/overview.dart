import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SenpaiOverView extends StatelessWidget {
  final String? title;
  final double? titleSize;
  final double? infoSize;
  final String? info;
  final double? leftSide;
  final double? spaceBetween;

  SenpaiOverView(
      {Key? key,
      this.title,
      this.info,
      this.titleSize,
      this.infoSize,
      this.leftSide,
      this.spaceBetween})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftSide!),
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
            style: TextStyle(
                fontSize: infoSize,
                fontFamily: "CrimsonPro-Italic",
                fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
