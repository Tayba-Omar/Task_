
import 'package:flutter/material.dart';
import 'package:hw/popUp.dart';

import 'DropDownBtn.dart';
import 'GridView.dart';
import 'LogInPageTask.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogIn()

    );
  }
}
