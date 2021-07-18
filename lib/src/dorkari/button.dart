import 'package:flutter/material.dart';
import 'package:food_app/src/configs/textTheme.dart';

class SquareIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color iconColor, buttonColor;
  final double width;
  final IconData icon;
  final double borderRadius;

  const SquareIconButton(
      {Key? key,
      required this.onPressed,
      this.iconColor = color_green,
      this.buttonColor = Colors.white,
      this.width = 70,
      required this.icon,
      this.borderRadius = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: width,
        child: Icon(
          this.icon,
          color: iconColor,
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
