import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OnHoverButton(builder: ((isHover) {
          final color = isHover ? Colors.blue : Colors.black;
          return Text(
            "Submit",
            style: TextStyle(fontSize: 15, color: color),
          );
        })),
      ),
    );
  }
}

class OnHoverButton extends StatefulWidget {
  late Widget Function(bool isHover)? builder;
  OnHoverButton({Key? key, this.builder}) : super(key: key);

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
