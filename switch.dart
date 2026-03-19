import 'package:flutter/material.dart';
import 'switchdemo4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: ListTileSwitchDemo(
        isDarkMode: _isDark,
        onDarkModeChanged: (value) {
          setState(() {
            _isDark = value;
          });
        },
      ),
    );
  }
}

