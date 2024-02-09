import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Themes/theme.dart';
import 'package:instagram_ui_clone/Views/Home.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';

void main() {
runApp(EasyDynamicThemeWidget(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: darkThemeData,
      darkTheme: lightThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: Home(),
    );
  }
}
