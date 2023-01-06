import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SenpaiDesignProcess extends StatelessWidget {
  final String? title;
  final double? titleSize;
  final List? designProcess;
  final double? infoSize;
  final String? info;

  final double? leftSide;
  final double? designTitleSize;
  final double? paddingSize;
  final double? spaceBetween;

  SenpaiDesignProcess(
      {Key? key,
      this.title,
      this.titleSize,
      this.leftSide,
      this.designProcess,
      this.designTitleSize,
      this.paddingSize,
      this.info,
      this.infoSize,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i in designProcess!)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  padding: EdgeInsets.all(paddingSize!),
                  child: AutoSizeText(
                    i,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: designTitleSize,
                        fontFamily: "Bebas-Neue"),
                  ),
                ),
            ],
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
    ;
  }
}
