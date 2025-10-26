# Project Blueprint: Theming & UI Foundation

## 1. Overview

This document outlines the architectural and design foundation for a flexible and modern Flutter application. The core focus is on creating a robust, scalable, and maintainable theme system that supports both light and dark modes, custom semantic colors, and a clear structure for future development.

## 2. Implemented Features & Design

### Core Architecture:
- **Theme Provider:** Utilizes the `provider` package (`ChangeNotifierProvider`) to manage and toggle the application's theme state (`ThemeMode.light`, `ThemeMode.dark`).
- **Directory Structure:** Organized a clear and scalable structure for theme-related files:
  - `lib/core/services/theme_provider.dart`: Contains the logic for theme state management.
  - `lib/shared/styles/colors.dart`: Centralizes all raw color definitions for the entire app.
  - `lib/shared/themes/`: Holds all theme-related code.
    - `light_theme.dart`: Defines the `ThemeData` for the light mode.
    - `dark_theme.dart`: Defines the `ThemeData` for the dark mode.
    - `theme_extension.dart`: Defines a custom `ThemeExtension` to provide semantic, theme-aware colors to the UI.
  - `lib/shared/widgets/status_card.dart`: A reusable UI component for displaying themed status information.

### Visual Design & Theming:
- **Dual Mode Support:** Full support for both **Light and Dark** themes, with an easy-to-use toggle in the `AppBar`.
- **Centralized Color Palette (`colors.dart`):**
  - A comprehensive set of static `Color` constants.
  - Defines **Primary**, **Secondary**, **Background**, **Surface**, and **Text** colors.
  - Includes a full set of semantic **Status Colors**: `Success`, `Error`, `Warning`, and `Info`.
  - **Crucially, it defines a corresponding "on-" color for every key background color** (`onPrimary`, `onSuccess`, `onError`, etc.) to ensure foreground content (text, icons) always has perfect contrast and readability.
- **Material 3 `ColorScheme`:** Both `lightTheme` and `darkTheme` are built upon the modern `ColorScheme` from Material 3, ensuring compatibility with the latest Flutter widgets.
- **Custom Semantic Theming (`AppThemeExtension`):**
  - Created a custom `AppThemeExtension` to expose business-specific or non-standard colors in a type-safe and theme-aware way.
  - This extension now includes the full set of status colors and their corresponding "on-" colors.
- **Example UI (`MyHomePage`):**
  - A "Status Dashboard" is implemented using a `GridView`.
  - It features four `StatusCard` widgets, each representing a semantic color (`success`, `error`, `warning`, `info`).
  - Each card correctly uses its corresponding themed background color and foreground "on-" color, making the UI automatically adapt to light and dark modes.

## 3. Current Plan & Next Steps

The foundational UI and theme system is now robust and complete. We can now move on to adding more features and enhancing the visual presentation.

**Next Objective:** Enhance the application's typography using custom fonts from the `google_fonts` package. This will give the app a more unique and polished visual identity.

**Actionable Steps:**

1.  **Add Dependency:** Add the `google_fonts` package to `pubspec.yaml`.
2.  **Update Themes:** Modify `light_theme.dart` and `dark_theme.dart` to use `GoogleFonts` for the `AppBar` titles and card titles.
3.  **Refine Typography:** Apply different font styles (e.g., weights, sizes) to create a clear visual hierarchy in the UI.
