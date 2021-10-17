import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_app/initial_bindings.dart';

import 'home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      initialBinding: InitialBindings(),
    );
  }
}
