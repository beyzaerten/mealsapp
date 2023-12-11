import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/screens/categories.dart';

final theme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: const Color.fromRGBO(212, 212, 30, 1)));

void main() {
  runApp(ProviderScope(
      child: MaterialApp(theme: theme, home: const Categories())));
}
