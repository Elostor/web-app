import 'package:flutter/material.dart';
import '/resources/widgets/buttons/abstract/app_button.dart';

class IconTextButton extends AppButton{
  final IconData icon;
  final Color color;
  final Color hoverColor;
  final ValueNotifier<bool> _isMouseOverNotifier = ValueNotifier(false);

  IconTextButton({
    super.key,
    required super.text,
    super.onPressed,
    required this.icon,
    required this.color,
    required this.hoverColor,
    super.width,
    super.height,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _isMouseOverNotifier.value = true,
      onExit: (event) => _isMouseOverNotifier.value = false,
      child: ValueListenableBuilder(
          valueListenable: _isMouseOverNotifier,
          builder: (context, isMouseOver, child) {
            Color buttonColor = isMouseOver ? color : hoverColor;

            return TextButton.icon(
              onPressed: onPressed,
              icon: Icon(
                icon,
                color: buttonColor,
                size: 22,
              ),
              label: Text(
                text,
                style: TextStyle(
                    color: buttonColor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,

              ),
            );
          },
      ),
    );
  }
}

