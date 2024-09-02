import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemes {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.backgroundColor,
      onPrimary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      onSecondary: AppColors.backgroundColor,
      error: AppColors.errorColor,
      onError: AppColors.backgroundColor,
      surface: AppColors.surfaceColor,
      onSurface: AppColors.backgroundColor,
    ),
  );
}
