import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'theme_extension.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.primaryDark,
  scaffoldBackgroundColor: AppColors.backgroundDark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryDark,
    onPrimary: AppColors.onPrimaryDark,
    secondary: AppColors.secondaryDark,
    onSecondary: AppColors.onSecondaryDark,
    surface: AppColors.surfaceDark,
    onSurface: AppColors.onSurfaceDark,
    error: AppColors.errorDark,
    onError: AppColors.onErrorDark,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.textDark),
    bodyMedium: TextStyle(color: AppColors.textDark),
  ),
  extensions: [
    AppThemeExtension(
      primary: AppColors.primaryDark,
      secondary: AppColors.secondaryDark,
      success: AppColors.successDark,
      error: AppColors.errorDark,
      warning: AppColors.warningDark,
      info: AppColors.infoDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.onSurfaceDark,
      onSuccess: AppColors.onSuccessDark,
      onError: AppColors.onErrorDark,
      onWarning: AppColors.onWarningDark,
      onInfo: AppColors.onInfoDark,
      neutral100: AppColors.neutral900,
      neutral200: AppColors.neutral800,
      neutral300: AppColors.neutral700,
      neutral400: AppColors.neutral600,
      neutral500: AppColors.neutral500,
      neutral600: AppColors.neutral400,
      neutral700: AppColors.neutral300,
      neutral800: AppColors.neutral200,
      neutral900: AppColors.neutral100,
    ),
  ],
);
