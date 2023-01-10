import 'package:flutter/material.dart';
import 'package:new_flutter/pages/Home.dart';
import 'package:new_flutter/pages/eventpage.dart';
import 'package:new_flutter/pages/startingPage.dart';
import 'package:new_flutter/routes.dart';
import 'package:new_flutter/theme.dart';

void main() {
  runApp(const NewTourPalApp());
}

class NewTourPalApp extends StatefulWidget {
  const NewTourPalApp({Key? key}) : super(key: key);
  @override
  State<NewTourPalApp> createState() => _NewTourPalAppState();
}

class _NewTourPalAppState extends State<NewTourPalApp> {
  bool isDark = false;

  void toggleDarkMode(bool newState) {
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.teal),
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      //initialRoute: Home.routName,
      routes: routes,
      //home: Event(),
      // home: MyWidget(),
      home: Home(isDark: isDark,toggleDarkMode: toggleDarkMode,
      ),
    );
  }
}
