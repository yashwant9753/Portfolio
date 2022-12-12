import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'portfolioColor.dart';

class DesktopHeaderScreen extends StatelessWidget {
  const DesktopHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 80,
      child: Padding(
        padding: EdgeInsets.only(left: 80, right: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HeaderText(),
          ],
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String? title;
  const HeaderText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
          color: Colors.white, fontSize: 39, fontFamily: "Bebas-Neue"),
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText('PORTFOLIO'),
          RotateAnimatedText('Yashwant Sahu'),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }
}

class TabletHeader extends StatelessWidget {
  const TabletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 80,
      child: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HeaderText(),
          ],
        ),
      ),
    );
  }
}

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PortfolioColor.greyColor,
      height: 60,
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "PORTFOLIO",
              style: TextStyle(
                  color: Colors.white, fontSize: 31, fontFamily: "Bebas-Neue"),
            ),
          ],
        ),
      ),
    );
  }
}
