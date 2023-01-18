import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'portfolioColor.dart';
import 'package:flutter/material.dart';

class DesktopHeaderScreen extends StatelessWidget {
  final bool? isHome;
  DesktopHeaderScreen({Key? key, this.isHome}) : super(key: key);

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
            Row(
              children: <Widget>[
                isHome! ? Text("") : _NavBarItem("Home", 28, "/"),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem("Projects", 28, "/projects"),
                SizedBox(
                  width: 60,
                ),
                _NavBarItem("Resume", 28, "/resume"),
                SizedBox(
                  width: 60,
                ),
              ],
            )
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

class _NavBarItem extends StatelessWidget {
  final String title;
  final double txtSize;
  final String? openLink;

  const _NavBarItem(this.title, this.txtSize, this.openLink, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, openLink!);
      },
      child: OnHoverButton(builder: ((isHover) {
        final color = isHover ? Colors.blue : Colors.black;
        return Text(
          title,
          style: TextStyle(
            fontSize: txtSize,
            color: Colors.white,
            fontFamily: "Dosis",
          ),
        );
      })),
    );
  }
}

class OnHoverButton extends StatefulWidget {
  final Widget Function(bool isHover)? builder;
  const OnHoverButton({Key? key, this.builder}) : super(key: key);

  @override
  State<OnHoverButton> createState() => _OnHoverButtonState();
}

class _OnHoverButtonState extends State<OnHoverButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()
      ..translate(0, -8, 0)
      ..scale(1.2);
    final transform = isHover ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (Event) => onEntered(true),
        onExit: (Event) => onEntered(false),
        child: AnimatedContainer(
            curve: Curves.easeOut,
            duration: Duration(milliseconds: 200),
            transform: transform,
            child: widget.builder!(isHover)));
  }

  void onEntered(bool isHover) => setState(() {
        this.isHover = isHover;
      });
}

class TabletHeader extends StatelessWidget {
  final bool? isHome;
  TabletHeader({Key? key, this.isHome}) : super(key: key);

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
            Row(
              children: <Widget>[
                isHome! ? _NavBarItem("Home", 24, "/") : Text(""),
                SizedBox(
                  width: 55,
                ),
                _NavBarItem("Projects", 28, "/projects"),
                SizedBox(
                  width: 55,
                ),
                _NavBarItem("Resume", 24, "/resume"),
                SizedBox(
                  width: 55,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileHeader extends StatefulWidget {
  const MobileHeader({super.key});

  @override
  State<MobileHeader> createState() => _MobileHeaderState();
}

class _MobileHeaderState extends State<MobileHeader> {
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
            IconButton(
              icon: Icon(Icons.menu),
              iconSize: 40,
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            )
          ],
        ),
      ),
    );
  }
}

class NavigationDrawerWidget extends StatelessWidget {
  final bool? isHome;
  final padding = EdgeInsets.symmetric(horizontal: 20);

  NavigationDrawerWidget({
    Key? key,
    this.isHome,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final name = 'Yashwant Sahu';
    final email = 'yashwantsahu81093@gmail.com';
    final urlImage = 'assets/About-Me.png';

    return Drawer(
      // backgroundColor: Colors.black,
      backgroundColor: PortfolioColor.greyColor,

      child: ListView(
        children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,

            // onClicked: () => Navigator.pushNamed(context, ""),
            // // onClicked: () => Navigator.of(context).push(MaterialPageRoute(
            // //     // builder: (context) => UserPage(
            // //     //   name: 'Sarah Abs',
            // //     //   urlImage: urlImage,
            // //     // ),
            // //     )),
          ),
          Divider(color: Colors.white70),
          Container(
            padding: padding,
            child: Column(
              children: [
                isHome!
                    ? buildMenuItem(
                        text: "Home ",
                        icon: Icons.home,
                        onClicked: () => selectedItem(context, 0),
                      )
                    : Text(""),
                buildMenuItem(
                  text: 'Project',
                  icon: Icons.book,
                  onClicked: () => selectedItem(context, 1),
                ),
                buildMenuItem(
                  text: 'Resume',
                  icon: Icons.book,
                  onClicked: () => selectedItem(context, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader({
    String? urlImage,
    String? name,
    String? email,
    VoidCallback? onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: AssetImage(urlImage!)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name!,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email!,
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    String? text,
    IconData? icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text!, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.pushNamed(context, "/");
        // Navigator.of(context).push(MaterialPageRoute(
        //     // builder: (context) => PeoplePage(),
        //     ));
        break;
      case 1:
        Navigator.pushNamed(context, "/projects");

        // Navigator.of(context).push(MaterialPageRoute(
        //     // builder: (context) => FavouritesPage(),
        //     ));
        break;
      case 2:
        Navigator.pushNamed(context, "/resume");

        // Navigator.of(context).push(MaterialPageRoute(
        //     // builder: (context) => FavouritesPage(),
        //     ));
        break;
    }
  }
}
