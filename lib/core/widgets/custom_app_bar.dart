import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required String title, IconButton? leading}) {
    return AppBar(
      title: Text(title, style: TextStyles.appBarStyles),
      leading: leading,
      centerTitle: true,
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.colorsWhite,
    );
  }