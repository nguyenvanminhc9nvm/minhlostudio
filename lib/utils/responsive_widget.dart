import 'package:flutter/material.dart';

class ResponsiveWidget extends StatefulWidget {
  const ResponsiveWidget({
    super.key,
    required this.tabletLayout,
    required this.mobileLayout,
  });

  final Widget tabletLayout;
  final Widget mobileLayout;

  @override
  State<ResponsiveWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return widget.tabletLayout;
        } else {
          return widget.mobileLayout;
        }
      },
    );
  }
}
