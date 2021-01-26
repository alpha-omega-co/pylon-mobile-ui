import "package:flutter/material.dart";
import 'package:pylon_mobile/pylon.dart';

import 'loginView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green), home: pylon());
  }
}
