import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomBtnApp extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double? elevation;
  final IconData? icon;
  const CustomBtnApp({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.elevation,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        foregroundColor: textColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyles.btnStyles,),
    );
  }
}
