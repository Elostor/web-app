import 'package:flutter/material.dart';

// Checks screen size then returns a widget according to it.
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  static const double maxWebsiteWidgetWidth = 1200;
  static const double desktopMinWidth = 1000;
  static const double desktopMaxWidth = 1920;
  static const double mobileMaxWidth = 700;
  static const double mobileMinWidth = 450;
  static const double mobileMinHeight = 500;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop
  }) : super(key: key);

  // returns a platform bool value which is purely based on screen width
  static bool isMobileWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width < mobileMaxWidth;
  static bool isTabletWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width < desktopMinWidth && MediaQuery.sizeOf(context).width >= mobileMaxWidth;
  static bool isDesktopWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= desktopMinWidth;

  @override
  Widget build(BuildContext context) {
    if(MediaQuery.sizeOf(context).width >= desktopMinWidth) {
      return desktop;
    } else if (mobileMaxWidth <= MediaQuery.sizeOf(context).width) {
      return tablet;
    } else {
      return mobile;
    }
  }
}