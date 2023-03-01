import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'color_schemes.g.dart';

final appThemeProvider = Provider<AppTheme>((ref) => const AppTheme());

class AppTheme {
  final ColorScheme lightColor;
  final ColorScheme darkColor;

  const AppTheme({
    this.lightColor = lightColorScheme,
    this.darkColor = darkColorScheme,
  });

  ThemeData toLightTheme() {
    return ThemeData.from(
      colorScheme: lightColor,
      useMaterial3: true,
    );
  }

  ThemeData toDarkTheme() {
    return ThemeData.from(
      colorScheme: darkColor,
      useMaterial3: true,
    );
  }
}
