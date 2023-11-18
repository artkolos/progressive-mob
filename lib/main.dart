import 'package:flutter/material.dart';
import 'package:test_pm/presentation/screens/catalog_screen.dart';
import 'package:test_pm/presentation/theme/themes.dart';

import 'injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const TestPmApp());
}

class TestPmApp extends StatelessWidget {
  const TestPmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const CatalogScreen(),
    );
  }
}
