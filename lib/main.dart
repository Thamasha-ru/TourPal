import 'package:flutter/material.dart';
import 'package:new_flutter/pages/Home.dart';
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
       isDark =! isDark;
     });
   }

  // const TourPalApp({Key? key}) : super(key: key);
  // var mycolor = MaterialColor(
  //   const Color.fromRGBO(34, 227, 166, 0.9294117647058824).value,
  //   const <int, Color>{
  //     50: Color.fromRGBO(0, 137, 123, 0.1),
  //     100: Color.fromRGBO(0, 137, 123, 0.2),
  //     200: Color.fromRGBO(0, 137, 123, 0.3),
  //     300: Color.fromRGBO(0, 137, 123, 0.4),
  //     400: Color.fromRGBO(0, 137, 123, 0.5),
  //     500: Color.fromRGBO(0, 137, 123, 0.6),
  //     600: Color.fromRGBO(0, 137, 123, 0.7),
  //     700: Color.fromRGBO(0, 137, 123, 0.8),
  //     800: Color.fromRGBO(0, 137, 123, 0.9),
  //     900: Color.fromRGBO(0, 137, 123, 1),
  //   },
  // );




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
      home: Home(isDark: isDark, toggleDarkMode: toggleDarkMode,),
    );
  }
}

