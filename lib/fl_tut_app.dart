import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_flutter/models/event.dart';

import 'screens/home_screen.dart';

class FlutterTuttorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Обучающий пример",
      home: HomeScreen(),
    );
  }
}

