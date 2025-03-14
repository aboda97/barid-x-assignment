import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static const TextStyle appBarStyles = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static const TextStyle btnStyles = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
   static const TextStyle titleStyles = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.primaryColor
  );
   static const TextStyle subTitleStyles = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );
  static const TextStyle dataStyles = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.black87,
  );
}
