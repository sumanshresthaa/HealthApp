import 'package:flutter/material.dart';
import 'package:healthapp/signup.dart';

import 'dashboard.dart';
import 'login.dart';


void main() {
  runApp(HealthApp());
}

class HealthApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}


