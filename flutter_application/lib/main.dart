import 'package:flutter/material.dart';
import 'package:flutter_application/page/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Colors.black54,
          suffixIconColor: Colors.black54,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          prefixIconColor: Colors.white70,
          suffixIconColor: Colors.white70,
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(elevation: 0),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.black),
      ),
      themeMode: ThemeMode.light,
      home: const RootPage(),
    );
  }
}
