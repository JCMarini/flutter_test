import 'package:flutter/material.dart';
import 'package:test_app/pages/home_page.dart';
import 'desing/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: PrincipalThemes.defaultTheme,
        home: HomePage(key: Key('HomePage')));
  }
}
