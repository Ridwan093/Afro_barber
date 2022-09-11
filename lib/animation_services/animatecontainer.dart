import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BoxWidget(
      {Key? key,
      required this.size,
      required this.decoration,
      required this.child});

  final Size size;
  final BoxDecoration decoration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: decoration,
      child: child,
    );
  }
}
