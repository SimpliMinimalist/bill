import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'theme_extension.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryLight,
  scaffoldBackgroundColor: AppColors.backgroundLight,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryLight,
    onPrimary: AppColors.onPrimaryLight,
    secondary: AppColors.secondaryLight,
    onSecondary: AppColors.onSecondaryLight,
    surface: AppColors.surfaceLight,
    onSurface: AppColors.onSurfaceLight,
    error: AppColors.errorLight,
    onError: AppColors.onErrorLight,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textLight),
    bodyMedium: TextStyle(color: AppColors.textLight),
  ),
  extensions: [
    AppThemeExtension(
      primary: AppColors.primaryLight,
      secondary: AppColors.secondaryLight,
      success: AppColors.successLight,
      error: AppColors.errorLight,
      warning: AppColors.warningLight,
      info: AppColors.infoLight,
      surface: AppColors.surfaceLight,
      onSurface: AppColors.onSurfaceLight,
      onSuccess: AppColors.onSuccessLight,
      onError: AppColors.onErrorLight,
      onWarning: AppColors.onWarningLight,
      onInfo: AppColors.onInfoLight,
      neutral100: AppColors.neutral100,
      neutral200: AppColors.neutral200,
      neutral300: AppColors.neutral300,
      neutral400: AppColors.neutral400,
      neutral500: AppColors.neutral500,
      neutral600: AppColors.neutral600,
      neutral700: AppColors.neutral700,
      neutral800: AppColors.neutral800,
      neutral900: AppColors.neutral900,
    ),
  ],
);
