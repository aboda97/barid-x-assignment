import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder buildOuterBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      width: 1,
      color: AppColors.primaryColor,
    ),
  );
}

OutlineInputBorder buildErrorOuterBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(width: 1, color: Colors.red,),
  );
}
