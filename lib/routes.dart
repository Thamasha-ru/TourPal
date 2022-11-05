import 'package:flutter/material.dart';
import 'package:new_flutter/pages/Home.dart';
import 'package:new_flutter/pages/Login.dart';
import 'package:new_flutter/pages/Signup.dart';

final Map<String, WidgetBuilder> routes = {
  // ignore: avoid_types_as_parameter_names
  Home.routName: (context) => Home(toggleDarkMode: (bool ) {  },),
  Login.routName: (context) => const Login(),
  Signup.routName: (context) => const Signup(),
};
