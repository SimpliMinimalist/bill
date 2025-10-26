
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/services/theme_provider.dart';
import 'shared/themes/light_theme.dart';
import 'shared/themes/dark_theme.dart';
import 'shared/themes/theme_extension.dart';
import 'shared/widgets/status_card.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.themeMode,
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(title: 'App Status Dashboard'),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appTheme = theme.extension<AppThemeExtension>()!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appTheme.primary,
        title: Text(title, style: TextStyle(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.bold)),
         actions: [
          IconButton(
            icon: const Icon(Icons.brightness_4),
            onPressed: () => Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
            tooltip: 'Toggle Theme',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            StatusCard(
              title: 'Success',
              icon: Icons.check_circle_outline,
              color: appTheme.success,
              onColor: appTheme.onSuccess,
            ),
            StatusCard(
              title: 'Error',
              icon: Icons.highlight_off,
              color: appTheme.error,
              onColor: appTheme.onError,
            ),
            StatusCard(
              title: 'Warning',
              icon: Icons.warning_amber_outlined,
              color: appTheme.warning,
              onColor: appTheme.onWarning,
            ),
            StatusCard(
              title: 'Info',
              icon: Icons.info_outline,
              color: appTheme.info,
              onColor: appTheme.onInfo,
            ),
          ],
        ),
      ),
    );
  }
}
