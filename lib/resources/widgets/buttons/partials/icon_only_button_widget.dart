import 'package:flutter/material.dart';
import '/bootstrap/extensions.dart';
import '/resources/widgets/buttons/abstract/app_button.dart';

class IconOnlyButton extends AppButton {
  final Widget icon;
  final Color? color;
  final Color? hoverColor;

  const IconOnlyButton({
    super.key,
    super.onPressed,
    required this.icon,
    this.color,
    this.hoverColor,
    super.width,
    super.height,
  }) : super(text: "");

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        style:IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          hoverColor: context.color.bottomTabBarIconSelected,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      )
    );
  }
}