import 'package:flutter/material.dart';
import 'package:spotify/navigations/tabbar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 25, 25),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
          ),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        )
      ),
      home: const Tabbar(),
    );
  }
}
