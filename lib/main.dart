import 'package:flutter/material.dart';
import 'package:msym_calc/main_display.dart';
import 'package:msym_calc/calc_keybord.dart';
import 'text_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(TextData.appTitle),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [MainDisplay(), CalcKeyboard()],
            )));
  }
}
